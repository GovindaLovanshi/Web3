// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0^8.0;

contract Tracking{
    enum ShipmenStatus{PENDING,IN_TRANSIT,DELIVERED}

    struct Shipment{
        address sender;
        address reciever;
        uint256 pickupTime;
        uint256 deliveryTime;
        uint256 distance;
        uint256 price;
        ShipmenStatus status;
        bool isPaid;
    }

    mapping(address=> Shipment[]) public shipments;
    uint256 public shipmentCount;

    struct TypeShipment{
        address sender;
        address receiver;
        uint256 pickUpTime;
        uint256 deliveryTime;
        uint256 distance;
        uint256 price;
        ShipmenStatus status;
        bool isPaid;
    }

    TypeShipment[] typeShipments;

    event ShipmentCreated(address indexed sender,address indexed receiver,uint256 pickUpTime,
    uint256 distance,uint256 price);

    event ShipmenInTranst(address indexed sender.address indexed receiver,uint256 pickupTime);

    event ShipmentDelivered(address indexed sender,address indexed receiver,uint256 deliveryTime);

    event Shipmentpaid(address indexed sender,address indexed receiver,uint256 amount);

}