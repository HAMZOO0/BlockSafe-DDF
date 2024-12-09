// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FileStorage {

    struct File {
        string fileHash;    // The hash of the file stored on IPFS
        string fileType;    // Type of the file (e.g., 'text', 'audio', 'video')
        uint256 timestamp;  // Timestamp when the file was uploaded
        address owner;      // Owner of the file
    }

    // Mapping from file ID to File details
    mapping(uint256 => File) public files;

    // Event to notify file uploads
    event FileUploaded(uint256 indexed fileId, address indexed owner, string fileHash);

    // Event to notify file transfer
    event FileTransferred(uint256 indexed fileId, address indexed oldOwner, address indexed newOwner);

    // Modifier to check if the sender is the owner
    modifier onlyOwner(uint256 fileId) {
        require(msg.sender == files[fileId].owner, "You are not the owner of this file");
        _;
    }

    // Function to store a file's metadata on the blockchain
    function uploadFile(uint256 fileId, string memory fileHash, string memory fileType) public {
        require(bytes(fileHash).length > 0, "File hash cannot be empty");
        require(bytes(fileType).length > 0, "File type cannot be empty");
        require(files[fileId].owner == address(0), "File ID already exists");

        // Store the file metadata
        files[fileId] = File({
            fileHash: fileHash,
            fileType: fileType,
            timestamp: block.timestamp,
            owner: msg.sender
        });

        // Emit the FileUploaded event
        emit FileUploaded(fileId, msg.sender, fileHash);
    }

    // Function to retrieve the file metadata
    function getFile(uint256 fileId) public view returns (string memory, string memory, uint256, address) {
        require(files[fileId].owner != address(0), "File does not exist");
        File memory file = files[fileId];
        return (file.fileHash, file.fileType, file.timestamp, file.owner);
    }

    // Function to transfer ownership of a file
    function transferFile(uint256 fileId, address newOwner) public onlyOwner(fileId) {
        require(newOwner != address(0), "New owner address cannot be zero");

        address oldOwner = files[fileId].owner;
        files[fileId].owner = newOwner;

        // Emit the FileTransferred event
        emit FileTransferred(fileId, oldOwner, newOwner);
    }
}
