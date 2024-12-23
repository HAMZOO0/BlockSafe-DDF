// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HospitalBlockchain {
    struct MedicalRecord {
        string ipfsHash; // CID of the file on IPFS
        address owner;   // Owner of the record (patient)
        address doctor;  // Doctor who has access
        uint256 timestamp; // When the file was uploaded
    }

    mapping(uint256 => MedicalRecord) public records; // Records storage
    uint256 public recordCount; // Total records count

    event RecordAdded(uint256 recordId, string ipfsHash, address owner, address doctor);

    // Add a new record
    function addRecord(string memory _ipfsHash, address _doctor) public {
        recordCount++;
        records[recordCount] = MedicalRecord(_ipfsHash, msg.sender, _doctor, block.timestamp);
        emit RecordAdded(recordCount, _ipfsHash, msg.sender, _doctor);
    }

    // View a record by ID
    function getRecord(uint256 _recordId) public view returns (MedicalRecord memory) {
        require(records[_recordId].owner == msg.sender || records[_recordId].doctor == msg.sender, "Not authorized");
        return records[_recordId];
    }
}
