import React, { useEffect, useMemo, useState, useRef, useCallback } from "react";
import { useTable, usePagination } from "react-table";
import axios from 'axios';
import Button from 'react-bootstrap/Button';
import ButtonGroup from 'react-bootstrap/ButtonGroup'
import Table from 'react-bootstrap/Table'
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import styled from 'styled-components'

const DnaTable = () => {
    const [data, setData] = useState([]);
    const [pageCount, setPageCount] = useState(0);
    const fetchIdRef = useRef(0);

    const TableStyle = styled.div`
        padding: 1rem;
        ${'' /* These styles are suggested for the table fill all available space in its containing element */}
        display: block;
        ${'' /* These styles are required for a horizontaly scrollable table overflow */}
        overflow: auto;
        .table {
        border-spacing: 0;
        border: 1px solid black;
        .thead {
            ${'' /* These styles are required for a scrollable body to align with the header properly */}
            overflow-y: auto;
            overflow-x: hidden;
        }
        .tbody {
            ${'' /* These styles are required for a scrollable table body */}
            overflow-y: scroll;
            overflow-x: hidden;
            height: 250px;
        }
        .tr {
            :last-child {
            .td {
                border-bottom: 0;
            }
            }
            border-bottom: 1px solid black;
        }
        .th,
        .td {
            margin: 0;
            padding: 0.5rem;
            border-right: 1px solid black;
            ${'' /* In this example we use an absolutely position resizer,
            so this is required. */}
            position: relative;
            :last-child {
            border-right: 0;
            }
            .resizer {
            right: 0;
            background: blue;
            width: 10px;
            height: 100%;
            position: absolute;
            top: 0;
            z-index: 1;
            ${'' /* prevents from scrolling while dragging on touch devices */}
            touch-action :none;
            &.isResizing {
                background: red;
            }
            }
        }
        }
    `;

    const columns = useMemo(
        () => [
            {
                Header: 'Nr',
                accessor: 'identification', // accessor is the "key" in the data
            },
            {
                Header: 'Krew',
                accessor: 'blood',
            },
            {
                Header: 'Tkanka',
                accessor: 'tissue',
            },
            {
                Header: 'Surowica',
                accessor: 'serum',
            },
            {
                Header: 'Włosy',
                accessor: 'hair',
            },
            {
                Header: 'Linia',
                accessor: 'line',
            },
            {
                Header: 'Nr rodowodowy',
                accessor: 'pedigreeNumber',
            },
            {
                Header: 'Nr ewidencyjny w Białowieży',
                accessor: 'registrationNumber',
            },
            {
                Header: 'Sex',
                accessor: 'sex',
            },
            {
                Header: 'Pobrane przyżyciowo?',
                accessor: 'takenWhenAlive'
            },
            {
                Header: 'Masa/kg',
                accessor: 'mass'
            },
            {
                Header: 'Wiek-lata',
                accessor: 'ageYears'
            },
            {
                Header: 'Wiek-miesiące',
                accessor: 'ageMonths'
            },
            {
                Header: 'Data pobrania/przybycia',
                accessor: 'dateOfArrival'
            },
            {
                Header: 'Kraj pochodzenia',
                accessor: 'originCountry'
            },
            {
                Header: 'Miejsce pochodzenia',
                accessor: 'originPlace'
            },
            {
                Header: 'Kraj pobrania próbki',
                accessor: 'originOfSampleCountry'
            },
            {
                Header: 'Miejsce pobrania próbki',
                accessor: 'originOfSamplePlace'
            },
            {
                Header: 'Kraj dokąd jedzie',
                accessor: 'destinationCountry'
            },
            {
                Header: 'Miejsce dokąd jedzie',
                accessor: 'destinationPlace'
            },
            {
                Header: 'Data wpisu',
                accessor: 'creationDate'
            },
            {
                Header: 'Uwagi i dodatkowe informacje',
                accessor: 'additionalInfo'
            },
            {
                Header: 'pudełko krew -80',
                accessor: 'boxBlood80'
            },
            {
                Header: 'pozycja krew-80',
                accessor: 'positionBlood80'
            },
            {
                Header: 'pudełko tkanka',
                accessor: 'boxTissue'
            },
            {
                Header: 'data izolacji',
                accessor: 'dateOfIsolation'
            },
            {
                Header: 'ng/ul',
                accessor: 'ngUl'
            },
            {
                Header: '260/280',
                accessor: '_260_280'
            },
            {
                Header: 'pudełko DNA-20',
                accessor: 'boxDna20'
            },
            {
                Header: 'pozycja DNA-20',
                accessor: 'positionDna20'
            },
            {
                Header: 'Wsp. Inbredu',
                accessor: 'inbreed'
            },
            {
                Header: 'udzial 45 (Plebejer)',
                accessor: 'part45'
            },
            {
                Header: 'udzial 42 (Planta)',
                accessor: 'part42'
            },
            {
                Header: 'udzial 89 (Bilma)',
                accessor: 'part89'
            },
            {
                Header: 'udzial 87 (Bill)',
                accessor: 'part87'
            },
            {
                Header: 'udzial 16 (Plavia)',
                accessor: 'part16'
            },
            {
                Header: 'udzial 15 (Begrunder)',
                accessor: 'part15'
            },
            {
                Header: 'udzial 147 (Bismarck)',
                accessor: 'part147'
            },
            {
                Header: 'udzial 100 (Kaukasus)',
                accessor: 'part100'
            },
            {
                Header: 'udzial 96 (Gatczina)',
                accessor: 'part96'
            },
            {
                Header: 'udzial 95 (Garde)',
                accessor: 'part95'
            },
            {
                Header: 'udzial 35 (Plewna)',
                accessor: 'part35'
            },
            {
                Header: 'udzial 46 (Placida)',
                accessor: 'part46'
            },
            {
                Header: 'znany rodowód',
                accessor: 'knownLineage'
            },
            {
                Header: 'Linia męska',
                accessor: 'maleLine'
            },
            {
                Header: 'Linia żenska',
                accessor: 'femaleLine'
            },
            {
                Header: 'Gruźlica',
                accessor: 'tuberculosis'
            },
            {
                Header: 'Telazjoza',
                accessor: 'telasiosis'
            },
            {
                Header: 'Nicienie płucne',
                accessor: 'pulmonaryNematodes'
            },
            {
                Header: 'Motylica wątrobowa',
                accessor: 'nematodesHepaticMite'
            },
            {
                Header: 'Motyliczka żwaczowa',
                accessor: 'theRumenMoth'
            },
            {
                Header: 'Zmiany rogówki',
                accessor: 'cornealChanges'
            },
            {
                Header: 'Stany zapalne płuc',
                accessor: 'inflammationOfTheLungs'
            },
            {
                Header: 'Kamienie żółciowe',
                accessor: 'gallstones'
            },
            {
                Header: 'Stany zapalne nerek',
                accessor: 'kidneyInflammation'
            },
            {
                Header: 'Cysty/torbiele nerek',
                accessor: 'kidneyCysts'
            },
            {
                Header: 'Bolanoposthitis',
                accessor: 'bolanoposthitis'
            },
            {
                Header: 'Ropny wyciek z dróg rodnych',
                accessor: 'purulentDischargeFromTheGenitalTract'
            },
            {
                Header: 'Stany zapalne inne',
                accessor: 'otherInflammations'
            },
            {
                Header: 'Torbiele najądrza',
                accessor: 'epididymisCysts'
            },
            {
                Header: 'Torbiele inne',
                accessor: 'otherCysts'
            },
            {
                Header: 'Macica męska',
                accessor: 'maleUterus'
            },
            {
                Header: 'Inne istotne zmiany zdrowotne',
                accessor: 'otherSignificantHealthChanges'
            },
            {
                Header: 'Data ostatniej modyfikacji',
                accessor: ''
            },
            {
                Header: 'Użytkownik',
                accessor: ''
            },
        ],
        []
    )

    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        prepareRow,
        page,
        nextPage,
        previousPage,
        canNextPage,
        canPreviousPage,
        pageOptions,
        state: { pageIndex }
    } = useTable(
        {
            columns,
            data,
            manualPagination: true,
            pageCount: pageCount,
            initialState: { pageIndex: 0 }
        },
        usePagination
    )

    const fetchData = useCallback(pageIndex => {
        const fetchId = ++fetchIdRef.current
        if (fetchId === fetchIdRef.current) {


            axios.get('dna/' + pageIndex).then(response => {
                setData(response.data)
            })
        }
    }, [])

    useEffect(() => {
        axios.get('dna/pages').then(response => {
            setPageCount(response.data)
        })
    }, [])

    useEffect(() => {
        fetchData(pageIndex)
    }, [fetchData, pageIndex])

    return (
        <>
            <TableStyle>
                <Table striped bordered hover size="lg" {...getTableProps()}>
                    <thead>
                        {headerGroups.map(headerGroup => (
                            <tr {...headerGroup.getHeaderGroupProps()}>
                                {headerGroup.headers.map(column => (
                                    <th {...column.getHeaderProps()}>
                                        {column.render('Header')}
                                    </th>
                                ))}
                            </tr>
                        ))}
                    </thead>
                    <tbody {...getTableBodyProps()}>
                        {page.map((row) => {
                            prepareRow(row)
                            return (
                                <tr {...row.getRowProps()}>
                                    {row.cells.map(cell => {
                                        return (
                                            <td{...cell.getCellProps()}>
                                                {cell.render('Cell')}
                                            </td>
                                        )
                                    })}
                                </tr>
                            )
                        })}
                    </tbody>
                </Table>
            </TableStyle>
            <Navbar>
                <Nav className="container-fluid">
                    <Nav.Item>
                        <ButtonGroup>
                            <Button
                                onClick={() => previousPage()}
                                disabled={!canPreviousPage}>
                                Poprzednia
                            </Button>
                            <Button
                                onClick={() => nextPage()}
                                disabled={!canNextPage}>
                                Następna
                            </Button>
                            <Button variant="secondary">
                                Strona{' '}
                                <strong>
                                    {pageIndex + 1} z {pageOptions.length}
                                </strong>{' '}
                            </Button>
                        </ButtonGroup>
                    </Nav.Item>
                    <Nav.Item className="ml-auto">
                        <ButtonGroup
                            className="justify-content-end"
                            aria-label="Second group">
                            <Button variant="secondary">Zapisz zmiany</Button>
                            <Button variant="secondary">Usuń Zmiany</Button>
                        </ButtonGroup>
                    </Nav.Item>
                    <Nav.Item className="ml-auto">
                        <ButtonGroup
                            className="justify-content-end"
                            aria-label="Second group">
                            <Button variant="secondary">Dodaj rekord</Button>
                            <Button variant="secondary">Usuń rekord</Button>
                        </ButtonGroup>
                    </Nav.Item>
                </Nav>
            </Navbar>
        </>
    )
}

export default DnaTable;