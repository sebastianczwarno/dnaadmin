import React, { useState } from "react";
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import Dropdown from 'react-bootstrap/Dropdown';
import DropdownButton from 'react-bootstrap/DropdownButton';
import ImportData from '../ImportData/ImportData.js'

const NavigationBar = () => {
    const [showUploadDataModal, setShowUploadDataModal] = useState(false);
    const handleShowUploadDataModal = (show) => setShowUploadDataModal(show);

    return (
        <>
            <Navbar bg="dark" expand="md" variant="dark">
                <Nav className="container-fluid">
                    <Nav.Item>
                        <DropdownButton
                            className="mr-2"
                            id="dropdown-basic-button"
                            variant="success"
                            title="Excel">
                            <Dropdown.Item onClick={() => handleShowUploadDataModal(true)}>
                                Import
                        </Dropdown.Item>
                            <Dropdown.Item href="#/action-2">
                                Eksport
                        </Dropdown.Item>
                        </DropdownButton>
                    </Nav.Item>
                </Nav>
            </Navbar>
            <ImportData show={showUploadDataModal}
                close={() => handleShowUploadDataModal(false)} />
        </>
    )
};

export default NavigationBar;