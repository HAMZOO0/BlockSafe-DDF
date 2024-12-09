# **BlockSafe: Decentralized Data Framework (DDF)**  

BlockSafe is a **Decentralized Data Framework** designed to securely store, share, and manage sensitive data using blockchain technology. It serves as a flexible and scalable solution for building decentralized applications (dApps) across various industries, such as healthcare, voting, and certificate verification.  

Our first application built on **BlockSafe** is a **Medical Record System**, ensuring the privacy, security, and accessibility of medical data for patients, hospitals, and insurance providers.

---

## **Features**
- **Decentralized Architecture**: Eliminates single points of failure.
- **Data Transparency**: Immutable records for full traceability.
- **Cryptographic Security**: Ensures data integrity and authorized access.
- **Customizable Framework**: Adaptable to multiple use cases, including:
  - Medical Records
  - Voting Systems
  - Supply Chain Management
  - Certificate Verification

---

## **Technologies Used**

| **Layer**              | **Tools/Technologies**                                                                            |
|------------------------|---------------------------------------------------------------------------------------------------|
| **Blockchain**         | Ethereum/Polygon                                                                                 |
| **Smart Contracts**    | Solidity                                                                                         |
| **Data Storage**       | IPFS/Filecoin                                                                                     |
| **Backend**            | Flask/Django (Python) or Node.js                                                                 |
| **Frontend**           | React + Web3.js                                                                                  |
| **Wallet Integration** | MetaMask                                                                                         |
| **Development Tools**  | Hardhat, Remix IDE                                                                               |
| **Deployment**         | Ropsten or Polygon Mumbai Testnets                                                               |

---

## **How BlockSafe Works**

1. **Data Submission**: Sensitive data (e.g., medical records) is encrypted and stored off-chain using **IPFS/Filecoin**.
2. **Blockchain Logging**: The hash of the stored data is logged on the blockchain, ensuring data integrity and transparency.
3. **Access Control**: Patients (data owners) use their wallets to grant/revoke access to specific entities like hospitals or insurers.
4. **Transparency**: All access requests and transactions are recorded immutably on the blockchain.

---

## **Medical Record System (Use Case)**

### **Overview**
The **Medical Record System** is a dApp built using BlockSafe to securely store and share medical data.  
- Patients control their records using their wallets.  
- Hospitals upload records, which are stored in IPFS.  
- Access permissions are logged and managed on the blockchain.

---

### **Setup Instructions**

#### **Prerequisites**
- Node.js installed  
- MetaMask wallet  
- Ethereum development environment (e.g., Hardhat)  


<img width="503" alt="image" src="https://github.com/user-attachments/assets/2a979bf4-9068-4dc0-beae-b002cde07930">

