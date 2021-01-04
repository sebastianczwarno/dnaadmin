import React, {useState} from "react";
import {Modal, Button} from "react-bootstrap";
import axios from "axios";

const ImportData = (props) => {
    const [selectedFile, setSelectedFile] = useState(null);

    const onFileUpload = () => {
        const data = new FormData();
        data.append('file', selectedFile);
        axios.post('dna/file/upload', data).then(result => {
            console.log(result.statusText)
        }).catch(error => console.log(error));
    }

    const onChangeHandler = event => {
        setSelectedFile(event.target.files[0])
    }

    return (
        <Modal show={props.show} onHide={props.close}>
            <Modal.Header closeButton onClick={props.close}>
                <Modal.Title>Import</Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <input type="file" name="file" onChange={onChangeHandler}/>
            </Modal.Body>
            <Modal.Footer>
                <Button variant="primary" onClick={props.close}>
                    Close
                </Button>
                <Button
                    variant="secondary"
                    className="btn mr-1"
                    onClick={onFileUpload}>Upload</Button>
            </Modal.Footer>
        </Modal>
    );
}

export default ImportData;