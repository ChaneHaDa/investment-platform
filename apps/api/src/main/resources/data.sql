-- Index Info 테스트 데이터
INSERT INTO index_info (id, name, category) VALUES (1, 'KOSPI', 'DOMESTIC');
INSERT INTO index_info (id, name, category) VALUES (2, 'KOSDAQ', 'DOMESTIC');
INSERT INTO index_info (id, name, category) VALUES (3, 'S&P 500', 'FOREIGN');

-- Index Price 테스트 데이터 (2020년 1월 데이터)
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200102', 2175.17, 2176.68, 2168.65, 2180.89, 8.46, 1);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200103', 2176.54, 2175.17, 2174.36, 2187.93, 0.06, 1);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200106', 2155.07, 2165.67, 2151.20, 2170.37, -0.99, 1);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200107', 2151.31, 2155.07, 2140.34, 2159.50, -0.17, 1);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200108', 2145.19, 2147.72, 2133.82, 2153.27, -0.28, 1);

INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200102', 675.26, 675.65, 673.12, 678.54, 3.89, 2);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200103', 678.25, 675.26, 674.89, 681.43, 0.44, 2);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200106', 672.15, 676.54, 670.23, 678.76, -0.90, 2);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200107', 668.91, 672.15, 665.47, 674.32, -0.48, 2);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200108', 665.43, 667.89, 662.11, 670.25, -0.52, 2);

INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200102', 3257.85, 3244.67, 3235.53, 3258.14, 1.35, 3);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200103', 3234.85, 3226.36, 3214.67, 3246.15, -0.71, 3);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200106', 3246.28, 3217.55, 3205.43, 3246.84, 0.35, 3);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200107', 3237.18, 3241.86, 3232.80, 3244.67, -0.28, 3);
INSERT INTO index_price (base_date, close_price, open_price, low_price, high_price, yearly_diff, index_info_id)
VALUES ('20200108', 3253.05, 3238.59, 3236.67, 3259.63, 0.49, 3);

INSERT INTO stock (id, name, short_code, isin_code, market_category)
VALUES (4, 'LG전자', '066570', 'KR7066570003', 'KOSPI');
INSERT INTO stock (id, name, short_code, isin_code, market_category)
VALUES (1, '삼성화재', '000810', 'KR7000810002', 'KOSPI');
INSERT INTO stock (id, name, short_code, isin_code, market_category)
VALUES (5, 'SK하이닉스', '000660', 'KR7000660001', 'KOSPI');
INSERT INTO stock (id, name, short_code, isin_code, market_category)
VALUES (2, 'LG', '003550', 'KR7003550001', 'KOSPI');
INSERT INTO stock (id, name, short_code, isin_code, market_category)
VALUES (3, '삼성전자', '005930', 'KR7005930003', 'KOSPI');
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200102', '94700', '96000', '94100', '96200', '2342070', '222841408700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200102', '238500', '243500', '236500', '244000', '120193', '28579537500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200102', '71100', '74100', '71100', '74100', '224450', '16123516800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200102', '55200', '55500', '55000', '56000', '12993228', '719663194492', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200102', '71000', '71800', '71000', '72100', '284758', '20296939400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200103', '94500', '96500', '94300', '97900', '3021380', '289547983400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200103', '237000', '239000', '237000', '239500', '143182', '34095973500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200103', '71600', '71600', '71000', '72200', '415381', '29701056200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200103', '55500', '56000', '54900', '56600', '15422255', '860206709400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200103', '71100', '71400', '70800', '71900', '369493', '26324361900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200106', '94300', '93000', '92800', '95300', '2577573', '243272130100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200106', '234000', '234500', '233000', '238000', '66855', '15670154000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200106', '71500', '71000', '70800', '72000', '158278', '11302300700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200106', '55500', '54900', '54600', '55600', '10278951', '567461518576', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200106', '69900', '70300', '69600', '70500', '337026', '23580739600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200107', '94000', '94500', '94000', '95400', '2489429', '235238505600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200107', '237000', '232500', '232500', '237000', '69122', '16199945500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200107', '72500', '72200', '71700', '72600', '239983', '17333849300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200107', '55800', '55700', '55600', '56400', '10009778', '560226659600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200107', '70300', '69800', '69800', '70600', '265311', '18652846300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200108', '97400', '96400', '95200', '99500', '7014748', '683275806400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200108', '232500', '233000', '230000', '234000', '100556', '23263023500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200108', '71300', '71300', '70700', '71600', '218433', '15534998800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200108', '56800', '56200', '55900', '57400', '23501171', '1330939275000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200108', '67500', '70300', '67000', '70300', '937438', '64136743100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200109', '99000', '98900', '97400', '99000', '3586413', '352618254100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200109', '230500', '232500', '226500', '234000', '189115', '43423845000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200109', '71200', '70600', '70300', '71300', '258440', '18314970400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200109', '58600', '58400', '57400', '58600', '24102579', '1402996580240', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200109', '66600', '68100', '66100', '68300', '1565867', '104665440200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200110', '98900', '99100', '97900', '99700', '2867925', '283434637578', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200110', '229000', '229000', '227000', '230500', '87093', '19884194000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200110', '70100', '70500', '69100', '70700', '286448', '19942522600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200110', '59500', '58800', '58300', '59700', '16000170', '945370595609', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200110', '66800', '67000', '66400', '67500', '797710', '53265395800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200113', '100500', '99000', '98000', '101000', '2242008', '222839393700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200113', '224500', '227000', '224000', '227500', '165498', '37198387822', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200113', '71800', '70000', '69700', '72200', '277559', '19843067400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200113', '60000', '59600', '59100', '60000', '11359139', '677775904500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200113', '66600', '66900', '66200', '67000', '600906', '40012303700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200114', '100500', '101500', '99900', '103500', '2913343', '295668466900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200114', '230000', '226500', '222000', '230500', '101264', '23062578500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200114', '73100', '71500', '71100', '73300', '373949', '27060230750', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200114', '60000', '60400', '59900', '61000', '16906295', '1021497902472', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200114', '68300', '67200', '67100', '69400', '1081428', '74104479100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200115', '98200', '99900', '98000', '99900', '2745625', '270372321400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200115', '229000', '229500', '227500', '231500', '78735', '18029869000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200115', '73300', '72900', '72400', '73500', '202497', '14809080000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200115', '59000', '59500', '58900', '59600', '14300928', '846497803148', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200115', '69600', '68800', '68600', '70000', '698052', '48455791100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200116', '99200', '97400', '97400', '99400', '2824804', '277740736700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200116', '231500', '229500', '225500', '231500', '112400', '25783513500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200116', '73400', '72800', '72200', '73600', '177065', '12951562900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200116', '60700', '59100', '59000', '60700', '14381774', '862500254132', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200116', '69900', '69800', '68900', '70000', '440562', '30599502700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200117', '99000', '100500', '98800', '101500', '2246394', '224263648700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200117', '227000', '229500', '227000', '231500', '84300', '19240738500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200117', '72800', '73400', '72400', '73700', '222198', '16176942200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200117', '61300', '61900', '61000', '62000', '16025661', '984566747211', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200117', '69200', '69800', '68900', '70200', '464204', '32172121400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200120', '99900', '100000', '99600', '101000', '1781639', '178632950800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200120', '228000', '227500', '226000', '229000', '75095', '17107880000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200120', '73700', '72700', '72600', '73900', '307422', '22584302500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200120', '62400', '62000', '61700', '62800', '12528855', '781048125700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200120', '71200', '69600', '69400', '71700', '894609', '63468963900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200121', '99300', '100500', '99000', '100500', '1483291', '147839625650', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200121', '228000', '228500', '225500', '228500', '80589', '18331004000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200121', '73900', '73900', '73500', '74600', '210403', '15603398300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200121', '61400', '62000', '61200', '62400', '11142693', '686991404500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200121', '70100', '71400', '70100', '71600', '379059', '26760572100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200122', '101000', '99000', '99000', '101000', '2257478', '226671660200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200122', '227000', '228500', '226500', '229500', '76605', '17416500500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200122', '74200', '73400', '72600', '74400', '205251', '15079843700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200122', '62300', '60500', '60400', '62600', '15339565', '943882357729', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200122', '70400', '69800', '68600', '70500', '546215', '38051183700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200123', '98700', '101000', '98200', '101000', '2780104', '275743291116', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200123', '225000', '226500', '223500', '228500', '88403', '19913265000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200123', '73500', '73200', '73100', '74300', '266142', '19581910500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200123', '60800', '61800', '60700', '61800', '14916555', '912319470070', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200123', '69000', '69600', '68600', '69700', '604024', '41704984800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200128', '96300', '95500', '95000', '96900', '3630362', '348138741600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200128', '217500', '222000', '217500', '226000', '90649', '19892357000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200128', '71900', '73900', '71200', '74500', '350758', '25313670100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200128', '58800', '59400', '58300', '59400', '23664541', '1394361672900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200128', '67100', '66600', '66600', '67500', '729302', '48842249300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200129', '97900', '96900', '96700', '99000', '2741459', '268775657800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200129', '214000', '217000', '212500', '217500', '105021', '22455395500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200129', '71900', '71700', '71000', '72300', '239752', '17185187200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200129', '59100', '59100', '58800', '59700', '16446102', '975344481100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200129', '67200', '67100', '66900', '68000', '585990', '39488238700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200130', '94000', '97800', '93800', '97800', '3223436', '307740532800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200130', '210500', '214500', '210000', '216500', '105170', '22231014500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200130', '72900', '71900', '71400', '73300', '384957', '28029890000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200130', '57200', '58800', '56800', '58800', '20821939', '1202914994182', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200130', '67200', '67000', '66900', '67800', '549972', '36959367800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200131', '93500', '94500', '93500', '97500', '4597139', '437668470967', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200131', '211000', '212000', '210000', '215000', '123969', '26353921500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200131', '70300', '73400', '70100', '73500', '402411', '28618318700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200131', '56400', '57800', '56400', '58400', '19749457', '1132894868886', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200131', '65900', '67200', '65800', '67600', '697360', '46303911000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200203', '94700', '91800', '91500', '95600', '3725535', '349297577165', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200203', '210000', '213000', '209500', '216000', '94615', '19990522000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200203', '69800', '70400', '69200', '70600', '270009', '18869075200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200203', '57200', '55500', '55200', '57400', '23995260', '1354043037985', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200203', '64900', '65400', '64100', '65600', '797729', '51714739400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200204', '97100', '94800', '94500', '97500', '3169743', '305409135550', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200204', '204500', '209000', '204000', '210000', '269824', '55685726971', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200204', '71500', '69300', '68700', '71700', '590780', '41449451400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200204', '58900', '57100', '56800', '59000', '21800192', '1271098154792', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200204', '65100', '64400', '64400', '65400', '716163', '46530479800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200205', '97700', '99300', '96900', '99300', '2911995', '285265098200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200205', '207500', '205000', '204500', '209000', '214582', '44343426000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200205', '72200', '70800', '70700', '73000', '628114', '45347716800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200205', '59500', '60000', '58900', '60200', '19278165', '1147948101875', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200205', '65200', '65600', '64800', '65700', '657342', '42846380100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200206', '100500', '98900', '98300', '101000', '2861441', '284679342800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200206', '211000', '210000', '208000', '213500', '107741', '22707281000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200206', '74200', '73500', '72800', '74600', '438785', '32356052500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200206', '61100', '60100', '59700', '61100', '14727159', '889351613760', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200206', '66800', '65600', '65500', '67000', '635295', '42312124700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200207', '99300', '100000', '98400', '100500', '1827393', '181411610600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200207', '212000', '210000', '209500', '214000', '118562', '25047239500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200207', '74100', '73100', '73100', '74500', '250131', '18506123000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200207', '60400', '61100', '59700', '61200', '16402493', '989081174058', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200207', '67300', '66700', '66500', '67400', '519466', '34804697900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200210', '98800', '98000', '97400', '99200', '1825648', '179314948100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200210', '212500', '210000', '209500', '213500', '89014', '18831099500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200210', '74200', '72800', '72600', '74700', '380665', '28098792000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200210', '59700', '59200', '59100', '59800', '13107121', '779716562160', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200210', '67000', '67000', '66100', '67000', '364246', '24243161900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200211', '99800', '99900', '99000', '100500', '1820578', '181889222300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200211', '213500', '210500', '210500', '216000', '87983', '18794009000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200211', '75600', '74300', '74100', '76000', '334005', '25135047000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200211', '59900', '59800', '59700', '60700', '11071231', '665611292200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200211', '67200', '67500', '66800', '67600', '462160', '31061952300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200212', '100000', '100500', '99100', '101000', '2616573', '261388375700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200212', '213000', '211500', '210500', '214000', '122303', '25979056295', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200212', '80100', '74800', '74800', '80200', '576513', '45340139900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200212', '60500', '60300', '59700', '60700', '12904207', '776552625500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200212', '67900', '67000', '67000', '68300', '487071', '32983429900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200213', '102000', '101000', '100500', '103500', '3519491', '360061639000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200213', '211000', '212000', '210500', '212500', '191819', '40514140309', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200213', '79000', '79700', '78400', '79800', '241388', '19066064800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200213', '60700', '61200', '60500', '61600', '18449775', '1127648710000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200213', '67100', '68200', '67000', '68400', '699540', '47147310000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200214', '104500', '101500', '101000', '105000', '1893163', '196317446500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200214', '211500', '211500', '210000', '213500', '65672', '13912543500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200214', '76900', '77600', '76200', '78500', '354833', '27308951100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200214', '61800', '60900', '60200', '61900', '13276067', '814138135400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200214', '67000', '67200', '66700', '67600', '354348', '23802470800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200217', '105000', '104500', '103500', '106000', '1190162', '125043016000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200217', '211500', '211500', '210000', '213000', '98359', '20796618250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200217', '76800', '77900', '76200', '77900', '123430', '9501469400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200217', '61500', '61600', '61200', '62000', '8740596', '538520786200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200217', '67000', '66900', '66000', '67300', '560384', '37309104100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200218', '102000', '104000', '101500', '104500', '2789667', '285910042510', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200218', '206000', '209000', '206000', '209500', '115559', '23921522500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200218', '77700', '76100', '75200', '78000', '234514', '18109467200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200218', '59800', '60800', '59700', '60900', '16674266', '1004070367400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200218', '68900', '67900', '67700', '70000', '1338368', '92447713500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200219', '103500', '102500', '101000', '103500', '2315634', '237343921813', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200219', '204000', '207500', '203000', '208500', '120651', '24808872000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200219', '77100', '79000', '76500', '79000', '169918', '13124408900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200219', '60200', '59800', '59400', '60400', '12951496', '775714875900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200219', '68800', '69300', '68000', '69400', '636116', '43696308600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200220', '104000', '104500', '102500', '106000', '3093782', '322602810500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200220', '205000', '206500', '204000', '208000', '233276', '48046828250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200220', '76000', '75700', '75700', '77200', '316471', '24124187300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200220', '60000', '60700', '59600', '61300', '14591924', '880828906700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200220', '67200', '68700', '66700', '69000', '677402', '45587884500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200221', '103000', '101500', '101000', '103500', '4064719', '417997903622', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200221', '206000', '205000', '204500', '208000', '118751', '24530946500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200221', '74300', '74600', '74200', '75000', '237443', '17705016300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200221', '59200', '58800', '58500', '59800', '13777393', '817158847200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200221', '66100', '66000', '65800', '67000', '531902', '35223888600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200224', '99500', '100500', '98900', '100500', '5550758', '553105215750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200224', '202500', '206000', '202500', '207500', '216885', '44294032250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200224', '71700', '73400', '71600', '74000', '356831', '25727105200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200224', '56800', '57400', '56800', '58100', '25627537', '1470408487400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200224', '63300', '64800', '63100', '65000', '874557', '55658331100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200225', '98000', '97800', '96400', '99100', '6594059', '642885853650', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200225', '203500', '204500', '200500', '204500', '143368', '29088333500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200225', '71700', '72500', '71000', '72700', '354095', '25428313400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200225', '57900', '56200', '56200', '58000', '23885408', '1368868270940', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200225', '63000', '62200', '62100', '63500', '956415', '60036326100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200226', '94600', '95500', '94400', '96100', '6405409', '607674362200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200226', '200000', '200000', '199500', '203000', '137971', '27703412000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200226', '70800', '70200', '69600', '71500', '488773', '34542707000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200226', '56500', '56000', '56000', '57000', '25483102', '1440950384200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200226', '63300', '62100', '61500', '63700', '607215', '38198836300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200227', '92800', '94700', '92200', '95300', '4644449', '415950598516', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200227', '202000', '200000', '199500', '204500', '140617', '28391184500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200227', '70000', '69700', '69500', '71100', '324392', '22783152300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200227', '55900', '56300', '55500', '56900', '23209541', '1301501421886', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200227', '62400', '63000', '62000', '63600', '524379', '32830864200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200228', '87900', '91000', '87700', '92200', '8171939', '730619364864', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200228', '198000', '202000', '197000', '205000', '220401', '43863289000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200228', '67500', '68300', '67000', '69500', '859004', '58093343400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200228', '54200', '55000', '54200', '55500', '30054227', '1642134682946', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200228', '60400', '61400', '60000', '61700', '932828', '56507160500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200302', '92100', '90000', '88300', '93100', '6382279', '570845182500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200302', '197500', '200500', '196000', '201500', '130885', '25829304500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200302', '67800', '68600', '67100', '68700', '317622', '21619196663', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200302', '55000', '54300', '53600', '55500', '30403412', '1665341867719', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200302', '60100', '60300', '59600', '61200', '711979', '42918418760', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200303', '92800', '95000', '92400', '95100', '5573006', '524304568800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200303', '196500', '198000', '194000', '199000', '133050', '26213037300', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200303', '68300', '69000', '67700', '69600', '285943', '19553179800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200303', '55400', '56700', '55100', '56900', '30330295', '1702259497750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200303', '60200', '61500', '60000', '61700', '587763', '35691817300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200304', '94300', '91300', '91300', '95000', '4984561', '468285374400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200304', '192000', '196500', '191000', '197000', '154977', '29774604000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200304', '68100', '67900', '67600', '68600', '300070', '20424592300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200304', '57400', '54800', '54600', '57600', '24765728', '1405494544044', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200304', '60600', '60100', '60100', '61200', '520867', '31642157300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200305', '94900', '95200', '93800', '95900', '4028776', '381457640000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200305', '197000', '192000', '191000', '198500', '113703', '22188894500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200305', '70300', '68600', '68300', '70400', '301420', '20993074200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200305', '57800', '57600', '56700', '58000', '21698990', '1245378832100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200305', '61500', '61300', '60800', '61900', '573595', '35257814900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200306', '92600', '93300', '92000', '94300', '3281612', '304717451900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200306', '191500', '193000', '189000', '194000', '111718', '21272895000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200306', '68400', '69500', '68100', '69500', '227136', '15559899700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200306', '56500', '56500', '56200', '57200', '18716656', '1058857640100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200306', '60300', '60900', '60200', '61100', '542438', '32826572800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200309', '86900', '89500', '86400', '89700', '6196552', '544548246500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200309', '186000', '187500', '183500', '190500', '127806', '23914315000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200309', '66200', '66900', '65600', '67200', '299170', '19805064400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200309', '54200', '54700', '53600', '55000', '30261485', '1642720550800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200309', '57800', '59000', '57500', '59300', '1001568', '58214072500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200310', '89100', '86900', '86600', '89400', '6579153', '580356642350', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200310', '182000', '187500', '182000', '189000', '153309', '28230838000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200310', '66900', '67900', '65800', '67900', '334842', '22385024600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200310', '54600', '53800', '53700', '54900', '32106554', '1744478326491', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200310', '60000', '58800', '58400', '61400', '1500440', '90474070500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200311', '85500', '88200', '85100', '88500', '5226251', '452031290600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200311', '179000', '178500', '178000', '185000', '137445', '24952381500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200311', '65300', '66000', '64900', '67300', '280046', '18509347800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200311', '52100', '54300', '52000', '54400', '45707281', '2425785996150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200311', '59000', '60000', '58100', '61000', '938290', '55445592400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200312', '82800', '83800', '79600', '84600', '8191818', '675100578672', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200312', '175000', '179500', '171000', '181500', '237392', '41509784500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200312', '62400', '66000', '61300', '66100', '537896', '33825144800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200312', '50800', '51000', '49300', '51900', '48149999', '2436965909150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200312', '55500', '58900', '55000', '58900', '1649095', '92478199500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200313', '82500', '76900', '76000', '84700', '8160758', '651864081500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200313', '167500', '159000', '158500', '175000', '224625', '37194006000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200313', '60800', '56500', '56500', '62200', '625378', '37146171200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200313', '49950', '47450', '46850', '51600', '59462933', '2902883152100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200313', '52500', '51100', '50600', '54500', '1968749', '102737670000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200316', '80600', '83700', '80400', '84800', '5097762', '420941604000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200316', '158500', '163000', '157500', '167000', '178133', '28568269500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200316', '58300', '60100', '58200', '61900', '346457', '20442575800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200316', '48900', '50100', '48800', '50900', '33339821', '1657128732300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200316', '50400', '53100', '50400', '54200', '948845', '49270721600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200317', '80400', '77500', '77000', '83100', '7107436', '569068819100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200317', '149500', '150500', '148000', '154500', '229767', '34593228500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200317', '54600', '55500', '54100', '57700', '430706', '23930584400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200317', '47300', '46900', '46700', '49650', '51218151', '2453541661000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200317', '49450', '48000', '48000', '52000', '1004008', '50267111550', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200318', '73100', '81600', '73000', '82500', '7949482', '623664695334', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200318', '138000', '147000', '137000', '148500', '261880', '37249617000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200318', '50800', '54000', '50500', '54800', '497779', '26120621400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200318', '45600', '47750', '45600', '48350', '40152623', '1896703404150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200318', '48000', '50200', '47700', '50800', '886739', '43923851650', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200319', '69000', '75500', '65800', '75800', '11140367', '779503807600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200319', '126000', '139000', '118000', '139500', '325928', '41041874500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200319', '48000', '50800', '45250', '51500', '544107', '26418303500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200319', '42950', '46400', '42300', '46650', '56925513', '2502939391663', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200319', '43650', '48900', '43650', '49600', '1601945', '72778894850', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200320', '74800', '71800', '70100', '76200', '8750101', '641208325400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200320', '129500', '129000', '119500', '132000', '239608', '30465212000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200320', '48500', '49500', '47000', '49900', '541226', '26121981475', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200320', '45400', '44150', '43550', '45500', '49730008', '2221272156100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200320', '45100', '44600', '43550', '45700', '1539670', '68841349250', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200323', '69400', '69700', '68000', '71600', '8192363', '571262544100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200323', '137500', '120000', '117500', '140500', '243535', '32050110000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200323', '46250', '46500', '44600', '46650', '423348', '19278760600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200323', '42500', '42600', '42400', '43550', '41701626', '1789671838540', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200323', '41850', '42350', '41600', '42850', '1186795', '49923250250', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200324', '78700', '73000', '72100', '78800', '7247345', '548981912800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200324', '145000', '134500', '132000', '146000', '168219', '23550837000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200324', '51700', '46500', '46350', '53000', '412014', '20171521300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200324', '46950', '43850', '43050', '46950', '49801908', '2254620196840', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200324', '44400', '42700', '42200', '44450', '1316623', '57396294250', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200325', '84500', '82000', '79800', '84700', '8787217', '723676328900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200325', '153000', '149000', '143000', '155000', '271935', '40396807520', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200325', '59100', '52300', '49000', '59500', '494572', '26903482800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200325', '48650', '48950', '47150', '49600', '52735922', '2552010175155', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200325', '48500', '48400', '46800', '48850', '1506779', '72223060200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200326', '80700', '85000', '80400', '87900', '7895289', '665668652900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200326', '145500', '150500', '144500', '152500', '192964', '28776042500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200326', '56300', '57800', '56300', '59600', '418017', '24216121400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200326', '47800', '49000', '47700', '49300', '42185129', '2044314125302', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200326', '49000', '49450', '48600', '51300', '1377158', '69274094600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200327', '83300', '85700', '80500', '85700', '8085695', '673273497500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200327', '151500', '151000', '147000', '156000', '189973', '28745998500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200327', '58800', '59100', '56600', '59500', '421212', '24577253500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200327', '48300', '49600', '46850', '49700', '39896178', '1931405584780', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200327', '49400', '51300', '48000', '51500', '1110394', '55232931750', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200330', '83700', '81000', '80000', '84900', '5270037', '433405493300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200330', '146500', '147000', '143000', '150000', '192605', '28157374000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200330', '58900', '58800', '57500', '59800', '414397', '24265010450', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200330', '47850', '47050', '46550', '48350', '26797395', '1268118958800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200330', '48500', '48400', '47100', '49200', '937027', '45232897550', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200331', '83300', '84000', '82000', '85500', '5333479', '446475912600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200331', '154000', '148000', '148000', '156500', '203980', '31221526500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200331', '59000', '58600', '58500', '61100', '414183', '24557399284', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200331', '47750', '48000', '47150', '48500', '30654261', '1467323482646', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200331', '48200', '49100', '47600', '49500', '1106424', '53743908550', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200401', '78400', '82100', '78400', '83200', '6845675', '552936384600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200401', '150000', '156500', '148500', '162500', '192567', '30193122000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200401', '55500', '57900', '55500', '58800', '354857', '20402790500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200401', '45800', '47450', '45800', '47900', '27259532', '1282482561850', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200401', '48100', '48250', '47850', '50800', '1298461', '64179570100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200402', '80000', '78800', '76500', '80000', '5394371', '423908686500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200402', '173000', '157000', '153000', '174000', '365885', '60402911000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200402', '54600', '55500', '53100', '56600', '327448', '17820551900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200402', '46800', '46200', '45350', '46850', '21621076', '997831026144', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200402', '49300', '49100', '48500', '50000', '1071663', '52920451700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200403', '79600', '80000', '78500', '80800', '3755301', '299316905200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200403', '170000', '167000', '165000', '172000', '168436', '28447660500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200403', '56000', '54200', '54100', '56400', '301142', '16733678300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200403', '47000', '47400', '46550', '47600', '22784682', '1074179776900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200403', '49850', '50100', '49200', '51200', '963015', '48220499550', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200406', '83100', '81000', '80200', '83300', '5784159', '472063035650', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200406', '174000', '171500', '170500', '179000', '118249', '20551868500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200406', '61100', '57300', '56800', '61100', '283092', '16689060100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200406', '48700', '47500', '47250', '48800', '23395726', '1123253804353', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200406', '51100', '50400', '49900', '51100', '868309', '43864784100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200407', '85800', '86600', '83700', '86700', '6188649', '529030193466', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200407', '173000', '173500', '172000', '178000', '180438', '31284763000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200407', '61700', '60400', '59900', '62500', '418532', '25678278500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200407', '49600', '49650', '49000', '50200', '31524034', '1561332868425', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200407', '54500', '52500', '50900', '55600', '2123508', '112875291800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200408', '84500', '85800', '84500', '86500', '3749575', '320975559100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200408', '174000', '171500', '170500', '180000', '169370', '29446336000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200408', '59700', '60700', '59000', '61900', '529172', '31855944100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200408', '48600', '49600', '48600', '49750', '25010314', '1230375023250', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200408', '53300', '54800', '53300', '54800', '1593974', '85861590200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200409', '85000', '86200', '84500', '86500', '3555538', '303325533115', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200409', '175500', '175000', '174500', '179000', '161809', '28411539143', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200409', '61700', '60400', '59700', '61700', '431383', '26243744600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200409', '49100', '49750', '48700', '49800', '22628058', '1111936132700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200409', '54200', '54200', '53300', '54300', '926771', '49849431600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200410', '84100', '84000', '83000', '84400', '3675338', '307149070600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200410', '183000', '174500', '172000', '184000', '199766', '35996254000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200410', '60300', '61000', '59700', '61200', '300840', '18183461700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200410', '49250', '48950', '48650', '49250', '17839111', '872177014700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200410', '53800', '54100', '53300', '54100', '687486', '36915695200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200413', '81400', '83200', '81100', '83400', '3615318', '295668237500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200413', '187000', '178500', '178500', '191000', '138039', '25825194500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200413', '58700', '59700', '58700', '60300', '236860', '14083296500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200413', '48300', '48650', '48300', '48900', '14431800', '700511423000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200413', '53200', '53800', '52800', '54100', '626957', '33530955600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200414', '82300', '82200', '81200', '83700', '3344109', '276219167400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200414', '193000', '188000', '186000', '193000', '104558', '19775160000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200414', '60200', '59000', '58800', '60700', '306136', '18373838000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200414', '49000', '48800', '48300', '49200', '14206216', '694513122356', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200414', '53600', '53600', '53000', '53900', '922591', '47759156300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200416', '81300', '80600', '80600', '82300', '4470072', '363739453100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200416', '191500', '190000', '188500', '192500', '135375', '25817230500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200416', '62700', '58100', '58000', '62700', '594662', '36165121300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200416', '49000', '49350', '48550', '49350', '23349760', '1143759563262', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200416', '53500', '53100', '52500', '53600', '788724', '41864417500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200417', '84100', '83600', '83200', '85900', '6205624', '525538253400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200417', '191500', '191000', '191000', '196000', '134314', '25836354500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200417', '62100', '60700', '60400', '64300', '374265', '23512116200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200417', '51400', '50800', '50300', '52000', '32041675', '1641068274800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200417', '54500', '54300', '53900', '55900', '1414373', '77429599300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200420', '82000', '83900', '82000', '83900', '5027876', '415413055400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200420', '189000', '189500', '189000', '192000', '113496', '21559133500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200420', '60600', '61500', '60500', '62300', '324727', '19920281500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200420', '50100', '51400', '50000', '51400', '21866354', '1106551694407', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200420', '53800', '54700', '53500', '54800', '809110', '43832695800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200421', '81300', '80600', '80200', '82200', '5090721', '412144588000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200421', '186500', '189000', '182000', '191500', '138565', '25792155500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200421', '62300', '60600', '59600', '62300', '322799', '19627298100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200421', '49250', '49400', '48700', '49700', '27407543', '1347414680188', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200421', '52600', '53400', '51700', '53500', '1029388', '54065376800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200422', '83900', '80600', '80000', '83900', '5335787', '438225875923', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200422', '185000', '186000', '181500', '188000', '117665', '21623171000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200422', '62100', '61600', '60400', '62100', '243042', '14861117900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200422', '49850', '48700', '48350', '50000', '18613864', '912223008750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200422', '52400', '52000', '51300', '52400', '727548', '37693580000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200423', '82600', '85200', '82000', '85200', '6519481', '542404167500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200423', '190000', '183500', '183500', '191500', '103621', '19539099000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200423', '63300', '61500', '61400', '63300', '272617', '17039976000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200423', '49850', '50200', '49500', '50300', '18754442', '936174022950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200423', '53300', '52700', '52500', '53500', '702412', '37248266800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200424', '81400', '82000', '80800', '82500', '3193144', '260273777200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200424', '184500', '186000', '184500', '190000', '105139', '19629201000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200424', '62000', '62200', '61700', '63000', '207426', '12946184500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200424', '49350', '49650', '49000', '49750', '15618347', '771212431650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200424', '52600', '52800', '52300', '53200', '529035', '27906644200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200427', '82600', '81700', '81200', '83200', '3235430', '266705549100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200427', '191500', '184500', '183000', '194500', '194174', '36687737000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200427', '62300', '61900', '61500', '62800', '154252', '9603880900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200427', '49850', '49350', '49100', '50000', '14049471', '697230549360', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200427', '53400', '52800', '52700', '53800', '561740', '29964721600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200428', '83400', '82500', '82400', '83900', '3205535', '266768527800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200428', '191000', '190500', '189500', '195000', '82929', '15899219331', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200428', '62500', '61900', '61500', '62600', '187027', '11623167000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200428', '50100', '49850', '49300', '50100', '16095399', '800260923102', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200428', '53600', '53800', '53100', '54500', '712240', '38318855800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200429', '83700', '83500', '82900', '84800', '3750568', '315313111200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200429', '190500', '192000', '190500', '195000', '98142', '18856088500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200429', '62000', '62500', '62000', '63500', '304604', '19044749000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200429', '50000', '49900', '49600', '50500', '15604533', '780706354100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200429', '54900', '53900', '53600', '55100', '1017067', '55621978200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200504', '81000', '82900', '80800', '82900', '5280026', '430739726900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200504', '182500', '185000', '182000', '187000', '170388', '31330535500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200504', '59600', '60000', '59600', '60600', '389657', '23401133800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200504', '48500', '48900', '48500', '49100', '26083749', '1270816552521', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200504', '55200', '54000', '53400', '55800', '1119161', '61261748000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200506', '82400', '82000', '80900', '82500', '3351424', '274199173244', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200506', '185500', '189500', '183500', '189500', '92176', '17065210000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200506', '61400', '60800', '60100', '61500', '276946', '16876846200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200506', '49200', '49000', '48500', '49200', '18070225', '882453648920', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200506', '55500', '56300', '55200', '56400', '805783', '44790457600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200507', '82400', '82400', '81800', '83400', '2660512', '220302375800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200507', '182500', '182500', '182500', '186000', '73563', '13522588500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200507', '61000', '60700', '60500', '61700', '202286', '12367048700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200507', '48800', '49200', '48700', '49300', '13884411', '679668516460', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200507', '54700', '55100', '54100', '55100', '754248', '41189927900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200508', '85000', '83000', '83000', '85500', '5039635', '425646243900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200508', '186500', '183500', '183500', '187000', '73324', '13634577500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200508', '61600', '60700', '60700', '62000', '206384', '12720858200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200508', '48800', '49100', '48800', '49350', '15319700', '752271196120', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200508', '55200', '55000', '54900', '55500', '632501', '34901081000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200511', '84500', '84500', '84100', '85200', '2800047', '236843648850', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200511', '186000', '185500', '185000', '188500', '80185', '14919932000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200511', '62000', '61900', '61600', '62600', '181623', '11288934600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200511', '48400', '48900', '48300', '49250', '16357743', '797523862042', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200511', '54500', '55400', '54300', '55700', '536547', '29508196000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200512', '85700', '84500', '83200', '86500', '3574409', '303812954200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200512', '183500', '185000', '182500', '186000', '86672', '15913704500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200512', '61300', '62800', '61300', '63200', '321663', '19908173400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200512', '47900', '48400', '47550', '48500', '23433590', '1122420047086', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200512', '54500', '54600', '54000', '55400', '707739', '38770123600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200513', '83600', '83500', '83000', '84100', '5371416', '448167261677', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200513', '189000', '182000', '181500', '189500', '101716', '18990923500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200513', '60700', '60900', '60100', '60900', '299603', '18082733800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200513', '48550', '47250', '47200', '48550', '20223277', '966405911050', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200513', '55000', '53800', '53600', '55000', '577061', '31407200100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200514', '80600', '82200', '80600', '82500', '6409652', '520451344900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200514', '197000', '189000', '188000', '197500', '195699', '37910025500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200514', '61400', '60500', '59700', '61400', '318640', '19299383300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200514', '48000', '47750', '47650', '48100', '19305974', '924043501923', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200514', '54200', '54500', '53900', '54900', '593689', '32207310800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200515', '81900', '81500', '80700', '82300', '4168866', '339736705600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200515', '196500', '193500', '192000', '201000', '135037', '26445111010', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200515', '62500', '61400', '60700', '62500', '299121', '18472992400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200515', '47850', '48400', '47700', '48450', '18463118', '887550446744', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200515', '54400', '54200', '53400', '54500', '504474', '27214744400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200518', '81100', '80400', '79200', '81800', '5294177', '426512754530', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200518', '196500', '198500', '193500', '199500', '86680', '16979264500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200518', '61400', '62800', '61000', '63000', '223965', '13761807200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200518', '48800', '47950', '47600', '49100', '20481981', '995409039450', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200518', '56400', '54800', '54400', '56400', '1005066', '55771899300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200519', '82700', '82400', '81700', '83200', '4620614', '381008846900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200519', '196000', '197000', '196000', '202000', '86943', '17225374500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200519', '64500', '62500', '62400', '64700', '375551', '23978637236', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200519', '50300', '50100', '49700', '50500', '25168295', '1261317730005', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200519', '58200', '57800', '57200', '58600', '1138915', '65964173400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200520', '84100', '81900', '81800', '84200', '3924403', '327323761395', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200520', '197000', '199000', '194500', '199000', '108999', '21417019750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200520', '63500', '64500', '63100', '64500', '366146', '23240627163', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200520', '50000', '50000', '49800', '50200', '14896899', '744469755655', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200520', '58000', '57700', '57100', '58000', '552137', '31810388400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200521', '83400', '84900', '83200', '84900', '2678953', '224639563000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200521', '194000', '196000', '193000', '196000', '92197', '17902014500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200521', '64000', '63200', '62500', '64300', '313490', '19925566200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200521', '49950', '50300', '49850', '50400', '14949266', '748343432800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200521', '57200', '58000', '57000', '58300', '709139', '40694192900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200522', '81300', '83100', '81000', '83300', '3471700', '283592909300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200522', '193000', '197000', '189000', '197000', '137305', '26367989750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200522', '62700', '65000', '62000', '65000', '799125', '50239667741', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200522', '48750', '49600', '48600', '49800', '19706284', '965729655667', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200522', '56300', '57200', '55900', '57300', '518452', '29244707400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200525', '81400', '81500', '80500', '81800', '2850294', '230731969000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200525', '192500', '194500', '190000', '194500', '57286', '10974417000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200525', '63300', '63200', '62000', '63300', '128616', '8073470200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200525', '48850', '48750', '48450', '48900', '14337913', '698563353200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200525', '56100', '56600', '55400', '56600', '478311', '26725996400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200526', '81900', '80600', '80600', '82100', '3040122', '247709750400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200526', '193000', '193000', '192000', '198500', '118214', '23102181000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200526', '64800', '63500', '63200', '64800', '195334', '12534641860', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200526', '49250', '48700', '48600', '49450', '15127490', '742843644150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200526', '57100', '56300', '56200', '57800', '674912', '38577581600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200527', '81400', '81100', '81000', '82700', '2946278', '240865818990', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200527', '193000', '191000', '190000', '198000', '98444', '19035754000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200527', '64800', '64200', '63800', '65300', '243667', '15750692200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200527', '49900', '48950', '48800', '50000', '19548479', '969951903266', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200527', '59500', '57500', '57400', '60000', '1707086', '100763339600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200528', '83900', '84100', '82400', '85400', '9227823', '776596090592', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200528', '189500', '192000', '187500', '193500', '170336', '32503930500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200528', '64600', '64600', '63900', '65200', '362388', '23387718000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200528', '50400', '51100', '49900', '51200', '31309318', '1585346422778', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200528', '58500', '59700', '57400', '59800', '1094166', '64077746200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200529', '81500', '82600', '81300', '82700', '6815185', '557500644200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200529', '182500', '187500', '182500', '188000', '337176', '62144854500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200529', '63100', '64000', '63100', '64900', '481958', '30608881800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200529', '50700', '50000', '49700', '50700', '27596961', '1390445842147', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200529', '59300', '57900', '57500', '59300', '900113', '52698557300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200601', '83600', '82100', '82100', '83700', '4205357', '349710396100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200601', '186500', '183500', '183500', '188000', '97485', '18060646000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200601', '64600', '63000', '62900', '64800', '200706', '12870617200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200601', '51200', '50800', '50600', '51200', '16949183', '864647248100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200601', '59200', '59000', '58500', '59500', '550906', '32554845600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200602', '83300', '82700', '82700', '83600', '3114162', '258791969450', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200602', '203000', '185000', '184500', '208000', '301777', '60245954500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200602', '66300', '64000', '64000', '66600', '306184', '20078780300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200602', '51400', '51000', '50800', '51500', '14247933', '730124279860', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200602', '60000', '59200', '59200', '61000', '846026', '50859667500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200603', '88700', '83400', '83400', '89200', '11642239', '1012026187762', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200603', '206000', '203000', '202500', '208000', '130289', '26813281500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200603', '67900', '67700', '66800', '68500', '402015', '27189115300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200603', '54500', '51800', '51700', '55000', '49257814', '2655435431458', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200603', '62100', '60500', '60500', '62400', '1433963', '88472370400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200604', '87700', '90000', '87100', '91600', '6678244', '595240770900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200604', '204000', '206000', '201000', '210000', '123653', '25407093500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200604', '71400', '67900', '67900', '71400', '616827', '43139364800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200604', '54600', '55800', '54600', '57000', '40220334', '2236419728472', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200604', '62200', '62800', '61200', '63100', '934862', '57912150500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200605', '90400', '88500', '87700', '90800', '4000557', '358740057800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200605', '202000', '200500', '198500', '203000', '199260', '40140880000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200605', '73600', '71800', '70300', '73800', '386898', '28114086300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200605', '55500', '54400', '54000', '55900', '22743629', '1254429842650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200605', '63000', '62200', '61700', '63000', '860924', '53776375500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200608', '91000', '93000', '90600', '93000', '3789382', '346478342640', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200608', '198500', '206000', '197000', '206500', '170262', '33992893500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200608', '72500', '75900', '72200', '76000', '289541', '21131761340', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200608', '54900', '56400', '54700', '56500', '25634965', '1418831067805', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200608', '64000', '64500', '63000', '64500', '975466', '62295385400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200609', '89800', '91000', '89100', '92000', '3410081', '307723476800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200609', '199000', '198500', '197500', '201500', '115087', '22927207500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200609', '72500', '72500', '71800', '73900', '273988', '19904752900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200609', '55500', '55800', '54400', '56500', '23998831', '1326558066100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200609', '66600', '64800', '64500', '67100', '1897513', '125498125700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200610', '90800', '89800', '89400', '91100', '3045250', '275007902100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200610', '198000', '202000', '197000', '202000', '122628', '24338103948', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200610', '73400', '72700', '71800', '73400', '326170', '23678961282', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200610', '55400', '55100', '54900', '55900', '16742493', '927393114690', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200610', '70100', '67400', '66600', '70400', '2744224', '190185515700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200611', '88500', '89300', '87500', '90300', '5467344', '485630048000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200611', '193000', '195500', '190500', '196500', '217527', '41987190500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200611', '74100', '71800', '71600', '74100', '556544', '40689329368', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200611', '54300', '54500', '53200', '55100', '33815123', '1832273837760', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200611', '69000', '69500', '67500', '70800', '1942350', '134048422300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200612', '85200', '84500', '84500', '85800', '4742329', '403883993200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200612', '184000', '186500', '184000', '190000', '171353', '31858824500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200612', '72000', '72900', '70600', '72900', '322657', '23094150600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200612', '52300', '52100', '51500', '52800', '26976019', '1410310719795', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200612', '67800', '65300', '65200', '68900', '1689624', '113078651000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200615', '82000', '84100', '82000', '86500', '4710114', '396586356900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200615', '178000', '180500', '178000', '190500', '232634', '42694127000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200615', '68900', '70300', '68900', '72000', '408844', '28814824100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200615', '49900', '51400', '49900', '52000', '28772921', '1468000064800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200615', '62900', '67000', '62800', '67100', '1545344', '100477013000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200616', '85400', '83400', '83300', '85700', '3518785', '297336837700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200616', '187500', '182000', '179000', '188000', '126935', '23523811500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200616', '72800', '69700', '69700', '73300', '322346', '23132045100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200616', '52100', '51200', '50600', '52100', '21808375', '1124878770600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200616', '65200', '65100', '64400', '66100', '1220699', '79567842100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200617', '86800', '84800', '83500', '87400', '4160612', '356040819900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200617', '191000', '187000', '184000', '192000', '139024', '26159745000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200617', '79100', '73000', '72700', '79100', '838913', '64373791700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200617', '52200', '52100', '51300', '52900', '26672595', '1390772012000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200617', '68200', '64700', '64600', '68300', '1576915', '105137197800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200618', '86200', '86100', '85400', '86800', '2484147', '214033924700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200618', '187500', '187000', '186500', '192500', '67752', '12804789000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200618', '76100', '77500', '76000', '78200', '503245', '38631425536', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200618', '52300', '52200', '51600', '52300', '15982926', '830793475311', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200618', '67800', '68000', '66900', '69200', '946224', '64529778400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200619', '85400', '86500', '84500', '87000', '3216102', '274017470400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200619', '186000', '191000', '186000', '191000', '116563', '21787042500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200619', '75300', '76200', '72700', '76500', '564024', '41846821428', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200619', '52900', '52600', '51600', '52900', '18157985', '950404357573', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200619', '68800', '68500', '65900', '68800', '861053', '58094278300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200622', '84900', '84400', '84300', '85900', '2167216', '184277657069', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200622', '185000', '183500', '183000', '188500', '59217', '11023881500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200622', '73100', '74000', '73100', '75200', '259589', '19216744500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200622', '52000', '52000', '51800', '52600', '13801350', '720717590485', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200622', '67500', '67900', '67300', '68500', '632910', '42871287300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200623', '84100', '85600', '83900', '86200', '2955819', '250909342994', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200623', '188500', '185000', '183500', '190500', '98898', '18542659500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200623', '73300', '74000', '72700', '74800', '496501', '36631758100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200623', '51400', '52500', '51100', '52800', '18086152', '937055386584', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200623', '66600', '68100', '65000', '68100', '849668', '56634662700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200624', '86000', '84200', '84000', '87400', '4079834', '351579333300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200624', '186500', '187000', '186000', '189500', '81807', '15325695250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200624', '74400', '73500', '73500', '75000', '225679', '16764406500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200624', '52900', '51900', '51600', '53900', '24519552', '1301305533100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200624', '67000', '66400', '66200', '68000', '622511', '41785843300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200625', '84300', '84300', '84000', '85600', '3397112', '287640892200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200625', '178000', '183000', '178000', '183500', '123282', '22271933500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200625', '71700', '73200', '71700', '73700', '258180', '18738693900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200625', '51900', '52100', '51900', '53000', '18541624', '970494909540', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200625', '64700', '65600', '64600', '66000', '798688', '52056241700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200626', '84600', '86000', '84500', '86100', '2889494', '246139912200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200626', '179500', '180000', '178000', '182000', '71421', '12873951000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200626', '73600', '72100', '71700', '74400', '369897', '27221148334', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200626', '53300', '52800', '52200', '53900', '21575360', '1146335751523', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200626', '64700', '65500', '64500', '65500', '528872', '34389276500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200629', '83600', '84000', '83500', '85300', '2932433', '246769859800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200629', '176000', '179000', '175500', '180000', '72248', '12793571000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200629', '71400', '71100', '71100', '72700', '327116', '23464601192', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200629', '52400', '52500', '52000', '53200', '17776925', '934880364880', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200629', '63500', '63800', '62500', '64000', '756841', '47797969600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200630', '85100', '86200', '85000', '87300', '4983607', '430210457400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200630', '176000', '176000', '175500', '181000', '83108', '14757902500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200630', '71200', '71600', '71000', '72400', '361518', '25927731690', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200630', '52800', '53900', '52800', '53900', '21157172', '1129431038800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200630', '63200', '64000', '63200', '64500', '648411', '41378752400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200701', '85300', '86800', '84900', '87300', '2382552', '204996625700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200701', '180000', '177000', '177000', '182000', '57461', '10363792500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200701', '71400', '71400', '71000', '72400', '172651', '12373867670', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200701', '52600', '53400', '52400', '53600', '16706143', '884144616500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200701', '64400', '64000', '63600', '65400', '564319', '36442121100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200702', '84400', '84800', '84000', '85200', '3295340', '278230270900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200702', '181000', '179000', '179000', '183000', '61061', '11083307500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200702', '72200', '71400', '71300', '72400', '199906', '14368817584', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200702', '52900', '52100', '52100', '52900', '14142583', '742668048500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200702', '64600', '64500', '64000', '65200', '451291', '29105656800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200703', '85400', '85000', '84500', '85600', '2195897', '186505562700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200703', '183000', '181000', '181000', '183000', '40387', '7358651500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200703', '71800', '72100', '71100', '72800', '240876', '17246951046', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200703', '53600', '53000', '52700', '53600', '11887868', '633333112600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200703', '65000', '65000', '64100', '65400', '494161', '31977848600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200706', '86000', '86000', '85800', '87000', '2561766', '221380002600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200706', '187500', '185000', '180500', '189500', '82337', '15379249500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200706', '72000', '72100', '71000', '72400', '218439', '15698493600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200706', '55000', '54000', '53800', '55000', '19856623', '1084003637100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200706', '68100', '65500', '65000', '68800', '1461414', '99178858300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200707', '84800', '87300', '84600', '87300', '3196352', '273456680600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200707', '187500', '191000', '186500', '191000', '85226', '16063869016', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200707', '71300', '72300', '71200', '72300', '471517', '33806446770', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200707', '53400', '55800', '53400', '55900', '30760032', '1672753640892', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200707', '65500', '69400', '64600', '69500', '1720050', '115602511500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200708', '83700', '83800', '83600', '84900', '3523620', '295860393700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200708', '185500', '191000', '185000', '191000', '71506', '13428422609', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200708', '69300', '72000', '69100', '72000', '365597', '25550905500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200708', '53000', '53600', '52900', '53900', '19664652', '1049005171762', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200708', '66400', '66200', '65600', '67900', '1111546', '74352659300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200709', '83000', '84200', '83000', '84600', '4002365', '333613553000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200709', '185500', '185500', '184500', '187500', '91334', '16957855500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200709', '70100', '69300', '68500', '70200', '352074', '24482029000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200709', '52800', '53200', '52800', '53600', '17054850', '906942878150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200709', '67700', '67500', '67100', '68400', '984866', '66822105500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200710', '82800', '83300', '82400', '83500', '2201557', '182243451800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200710', '178000', '187500', '178000', '187500', '113945', '20491263000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200710', '67900', '70600', '67200', '70600', '407636', '27690887100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200710', '52700', '53100', '52300', '53200', '13714746', '722449635016', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200710', '68200', '68100', '66500', '68600', '781290', '52993853500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200713', '83000', '83100', '82500', '83500', '2080934', '172499797800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200713', '182500', '180500', '178000', '186000', '84562', '15484050500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200713', '70200', '68000', '67500', '70200', '288151', '20000881700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200713', '53400', '53300', '53100', '53800', '12240188', '654721870500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200713', '68500', '69200', '68200', '69400', '569857', '39253695500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200714', '82900', '82600', '82000', '82900', '2048671', '168607198500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200714', '180500', '182000', '179500', '184000', '73438', '13250968750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200714', '72800', '69600', '69200', '73000', '395871', '28367126900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200714', '53800', '53700', '53200', '53800', '14269484', '763627089664', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200714', '70800', '68700', '68600', '71200', '1780194', '125328564500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200715', '83000', '83100', '82900', '83900', '3024429', '251923987700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200715', '180500', '182000', '180500', '184500', '95956', '17459025500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200715', '73600', '72700', '71700', '73800', '344404', '25095121700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200715', '54700', '54400', '54300', '55000', '24051450', '1317316063250', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200715', '74900', '71700', '71600', '75000', '2504840', '184339607000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200716', '82700', '83000', '82300', '83100', '2312310', '191183881500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200716', '185000', '181000', '180000', '186500', '124634', '23047935500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200716', '73400', '72600', '72000', '73700', '237423', '17303055700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200716', '53800', '54800', '53800', '54800', '16779127', '909095378660', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200716', '74500', '75100', '73000', '76000', '1184023', '88219289700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200717', '82900', '82700', '82600', '83500', '1579078', '131040661300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200717', '185500', '186500', '185000', '188000', '77182', '14407499500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200717', '72200', '74000', '72100', '74000', '166315', '12077032700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200717', '54400', '54200', '54100', '54700', '10096174', '549370576992', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200717', '75700', '75100', '74200', '76700', '1266762', '96114041300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200720', '82200', '82800', '82100', '83000', '2008624', '165380599100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200720', '182000', '185000', '181500', '186500', '63137', '11559408000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200720', '71800', '72400', '71500', '72800', '134809', '9710391800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200720', '54200', '54800', '54000', '54800', '10507530', '571387369575', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200720', '76000', '75600', '74500', '76200', '901831', '67934136400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200721', '84100', '83400', '83000', '84700', '4181015', '351360291700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200721', '183500', '182500', '181000', '184000', '86932', '15876903000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200721', '72200', '71600', '71500', '73000', '308056', '22282060886', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200721', '55300', '55200', '54800', '55400', '18297260', '1009862822645', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200721', '74900', '76200', '74600', '76300', '912127', '68651529300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200722', '83200', '84100', '82900', '84200', '2876295', '239611385215', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200722', '183000', '182500', '182500', '187500', '75776', '14022515500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200722', '73200', '71800', '71700', '73800', '217777', '15925201600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200722', '54700', '55300', '54700', '55500', '12885057', '708749076605', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200722', '75000', '75000', '74500', '76300', '801570', '60208414494', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200723', '82400', '84000', '82300', '84000', '3591647', '297728783200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200723', '179000', '183000', '178500', '183000', '123044', '22122628000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200723', '72600', '72800', '71500', '73100', '249194', '18018489700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200723', '54100', '54700', '53800', '54700', '16214932', '876160340400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200723', '74100', '74800', '73100', '74800', '759138', '56001768600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200724', '83700', '82300', '82200', '83700', '3667416', '304393422600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200724', '177000', '177000', '176000', '178500', '67862', '12025289500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200724', '72100', '71800', '71600', '73000', '145534', '10500779500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200724', '54200', '54000', '53700', '54400', '10994535', '594537647200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200724', '74100', '73400', '73000', '75200', '698830', '51783792700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200727', '82800', '83100', '82800', '84000', '2784652', '231629150440', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200727', '177000', '176500', '176000', '180000', '80894', '14347312000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200727', '74300', '72600', '72400', '74600', '289475', '21404475000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200727', '55600', '54300', '54300', '55700', '21054421', '1165206653173', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200727', '73600', '73700', '73300', '75300', '568984', '42287329900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200728', '83100', '83900', '82700', '83900', '4538720', '378147743500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200728', '175500', '177000', '174000', '178000', '177633', '31195437000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200728', '75800', '73500', '73200', '76200', '315872', '23707071300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200728', '58600', '57000', '56400', '58800', '48431566', '2803148376939', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200728', '72500', '74000', '72100', '74200', '975596', '71009610600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200729', '83200', '82900', '82600', '83800', '3719681', '309547939100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200729', '178500', '174000', '172500', '181000', '172710', '30660026000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200729', '74200', '74200', '74000', '75600', '335786', '25037248600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200729', '59000', '60300', '58600', '60400', '36476611', '2169959308582', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200729', '72000', '72500', '71700', '73400', '804210', '58110993900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200730', '85300', '83300', '83000', '86400', '6870841', '581215886250', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200730', '175500', '179000', '175500', '179500', '97472', '17237193500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200730', '73400', '74200', '73000', '74800', '208248', '15363889700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200730', '59000', '59700', '59000', '60100', '19285354', '1147803957700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200730', '72100', '72700', '71800', '73500', '735701', '53358572000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200731', '82800', '85700', '82800', '86000', '4848989', '405626780500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200731', '171500', '175000', '170500', '175500', '197887', '34064809500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200731', '74000', '73400', '72000', '74400', '359103', '26326987200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200731', '57900', '59500', '57700', '59600', '21943345', '1282932055676', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200731', '70700', '72200', '70600', '72500', '851076', '60514241700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200803', '81800', '82400', '81500', '82600', '3483106', '285292645200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200803', '167000', '171500', '167000', '171500', '122085', '20504097000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200803', '74800', '74100', '73200', '75400', '329908', '24626942000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200803', '56800', '57800', '56700', '57900', '21158940', '1209657414100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200803', '74000', '71300', '71000', '74500', '1183563', '86375745000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200804', '81600', '81800', '81400', '82500', '3005937', '245898247600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200804', '167000', '166000', '164500', '168500', '197838', '32983118750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200804', '78200', '75000', '75000', '79700', '550498', '42988410921', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200804', '57300', '57200', '57000', '58100', '19419694', '1115746295800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200804', '77900', '74900', '74000', '78100', '1738014', '132547148100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200805', '80700', '81200', '80500', '81300', '4537005', '366305427151', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200805', '164500', '166000', '163500', '166500', '155241', '25612335750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200805', '82300', '78100', '77800', '82500', '469770', '38198600300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200805', '56900', '57300', '56300', '57500', '17739706', '1007826798950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200805', '78300', '78900', '76500', '78900', '1197933', '93310508800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200806', '81100', '80700', '80700', '81900', '3391939', '275352872316', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200806', '166500', '163000', '163000', '168000', '187204', '31179725250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200806', '82600', '82000', '81300', '83200', '339434', '27950268996', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200806', '58000', '57100', '57100', '58400', '21625874', '1250813614044', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200806', '77200', '78300', '76900', '78900', '899941', '69822718500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200807', '80600', '81200', '80000', '81300', '4946631', '397344111700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200807', '164500', '166000', '163000', '166500', '127567', '20995502500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200807', '86000', '82700', '81700', '86200', '487203', '41547370800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200807', '57500', '57900', '57100', '58400', '18751717', '1081791206100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200807', '77200', '77800', '76300', '78300', '759800', '58818064400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200810', '81400', '80100', '79800', '81900', '3277238', '265033012100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200810', '165500', '163500', '162500', '167000', '319365', '52752929280', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200810', '90000', '85100', '84000', '90200', '546654', '48457674000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200810', '57800', '57600', '57500', '58300', '17774291', '1029079820059', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200810', '85700', '77100', '76500', '86200', '3706582', '308133259300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200811', '81300', '81700', '81000', '82000', '3234013', '263787032800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200811', '174500', '165000', '165000', '175000', '311788', '53478686500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200811', '87300', '90000', '86500', '94400', '822047', '73418319900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200811', '58200', '58000', '57800', '59500', '24907912', '1462107447200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200811', '83000', '86300', '83000', '86300', '1684857', '141418229900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200812', '81000', '81100', '80200', '81300', '3595828', '289641970965', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200812', '178500', '173500', '173500', '179500', '212097', '37469649000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200812', '88600', '86700', '83400', '88900', '604173', '52396101168', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200812', '59000', '58200', '57700', '59000', '18573934', '1083108188236', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200812', '87300', '82900', '81300', '88900', '2704977', '231176725900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200813', '80700', '81900', '80300', '82000', '4049387', '328483224600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200813', '187000', '180000', '180000', '192000', '563113', '104743441000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200813', '90000', '89500', '87000', '93400', '749333', '68098806767', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200813', '58700', '59400', '58000', '59600', '22089460', '1300659649700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200813', '87000', '87700', '85000', '90300', '1950559', '171639745600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200814', '80200', '80200', '80100', '81100', '2589552', '207896270700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200814', '189000', '188000', '182500', '191000', '315731', '59082539000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200814', '86000', '89700', '85200', '89700', '438723', '37899373500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200814', '58000', '58000', '57700', '58400', '15672548', '909052518800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200814', '88700', '87400', '85900', '90000', '1669303', '147445288300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200818', '78100', '80000', '78000', '80200', '4946279', '391556333215', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200818', '179500', '186500', '179000', '187000', '197936', '36205507000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200818', '82500', '86000', '81900', '86900', '396942', '33517721974', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200818', '58400', '58900', '58000', '59900', '25307825', '1490616755852', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200818', '84000', '88300', '82500', '89200', '1462971', '125445767700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200819', '75000', '77300', '75000', '78000', '8028305', '609790999800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200819', '187500', '179000', '178500', '189500', '225856', '42311610000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200819', '82700', '82300', '82200', '84700', '237344', '19740309800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200819', '57800', '59000', '57800', '59200', '16930719', '988995651300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200819', '85000', '84000', '83600', '88000', '1316003', '113460099400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200820', '71800', '74400', '71300', '74400', '7260223', '525176256700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200820', '177500', '185500', '177500', '186500', '177302', '32067144500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200820', '79100', '81600', '78000', '84000', '475768', '38249120800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200820', '55400', '57600', '55300', '57600', '30386029', '1709571902444', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200820', '84900', '84700', '84000', '87300', '1424255', '121523921000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200821', '74500', '72800', '72500', '77000', '7700029', '573840629600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200821', '178500', '180500', '177500', '184000', '102036', '18390694000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200821', '85800', '80000', '79900', '87000', '548515', '46552723300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200821', '55900', '56200', '55800', '56900', '21142288', '1190753262800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200821', '90300', '86800', '86700', '91000', '2978055', '266829083300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200824', '75500', '74600', '73700', '77200', '4298619', '326758783800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200824', '178500', '178000', '173500', '180000', '101751', '18046833000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200824', '85400', '85100', '83500', '86600', '302517', '25735924100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200824', '56100', '55800', '55400', '56600', '15055896', '843921714200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200824', '90600', '90000', '89100', '91600', '1265081', '114317456000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200825', '77000', '76300', '75400', '77700', '3473488', '266311133590', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200825', '184500', '180500', '179000', '185500', '130220', '23842141500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200825', '87800', '87600', '86000', '88400', '289524', '25306161888', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200825', '56400', '56400', '56100', '56800', '14021705', '790968401812', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200825', '90300', '90500', '89600', '92400', '1161120', '105414135300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200826', '78800', '78000', '77100', '79100', '4741965', '371645530948', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200826', '182000', '183000', '179000', '184500', '86680', '15693023000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200826', '88100', '87300', '85900', '89800', '303647', '26605664900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200826', '56400', '56400', '55700', '56500', '17651593', '989962031580', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200826', '87900', '90200', '86800', '90200', '1571474', '138189965600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200827', '79100', '80200', '78800', '80200', '4223450', '335794412800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200827', '180000', '180500', '178500', '182000', '132017', '23748283000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200827', '85300', '87700', '84700', '87700', '295849', '25405344700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200827', '55600', '56300', '55600', '56300', '16196568', '903860902050', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200827', '86200', '87700', '85500', '88700', '1330067', '115149855600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200828', '77800', '79500', '77700', '79600', '2511956', '196420844304', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200828', '184000', '182000', '180000', '185000', '146839', '26971534250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200828', '84800', '85400', '84100', '86200', '347883', '29560518900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200828', '55400', '56100', '55400', '56300', '14619888', '815588008400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200828', '85900', '87100', '85200', '87900', '954228', '82485096500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200831', '75100', '78200', '75100', '78800', '5113128', '388582174600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200831', '187000', '185500', '185000', '188500', '226029', '42175749500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200831', '82700', '84900', '82700', '85800', '469671', '39350929900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200831', '54000', '56000', '54000', '56100', '32671367', '1786245513500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200831', '84200', '86100', '84200', '87300', '1388783', '118621035800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200901', '75200', '75200', '75200', '76500', '2538676', '191845520800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200901', '191000', '185500', '185500', '196500', '281291', '54153837500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200901', '82700', '82300', '82100', '84300', '341958', '28397317300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200901', '54200', '54100', '54100', '54800', '19363117', '1052420037800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200901', '87700', '85100', '84700', '87900', '1133236', '98270306800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200902', '75500', '75900', '74900', '76400', '2369360', '178744172820', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200902', '191500', '192500', '187000', '194000', '106307', '20229733500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200902', '83300', '83300', '82500', '84700', '297160', '24715375351', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200902', '54400', '54600', '54100', '55100', '16905723', '922056312614', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200902', '86500', '89300', '85300', '89700', '1170481', '101753180900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200903', '78700', '77700', '77200', '79700', '7002529', '551333914770', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200903', '188000', '189500', '186500', '192000', '74969', '14144775500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200903', '83000', '83600', '82600', '84100', '330537', '27445491100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200903', '56400', '55600', '55500', '56700', '28384920', '1598059625582', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200903', '85700', '86500', '85600', '87300', '764553', '65882707300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200904', '78700', '76400', '76100', '79400', '4582566', '357748053900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200904', '182000', '184000', '180500', '186500', '112624', '20592622000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200904', '80100', '80600', '79800', '81400', '360976', '28957259000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200904', '55600', '55200', '55100', '55800', '22139109', '1228386611600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200904', '84000', '83000', '83000', '84600', '974597', '81681693600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200907', '78400', '78600', '77600', '79500', '2786930', '218349968500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200907', '183500', '181000', '180000', '185500', '97572', '17871727500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200907', '80000', '79800', '79200', '80300', '205067', '16330637000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200907', '56500', '56100', '55800', '57300', '18685880', '1056350331000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200907', '83800', '83700', '82900', '85300', '629528', '52895533900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200908', '79400', '78700', '78200', '80000', '3380355', '267736731800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200908', '184000', '183500', '182500', '185000', '84396', '15522374500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200908', '79500', '80000', '79200', '80400', '230927', '18379958400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200908', '58700', '57400', '57200', '58700', '31517520', '1832705754500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200908', '85800', '84300', '83100', '87200', '1367597', '117001596400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200909', '77300', '77900', '77200', '78400', '3918435', '305036735025', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200909', '186000', '183000', '181500', '186000', '90418', '16663740000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200909', '79500', '78900', '78000', '80400', '286174', '22691502000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200909', '58400', '58200', '57800', '59300', '30597399', '1791534297254', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200909', '90200', '87200', '84600', '92000', '3555936', '319073622200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200910', '76600', '78000', '76600', '78200', '3541520', '272690710300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200910', '185000', '185000', '183500', '188000', '122392', '22686477500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200910', '79700', '80100', '79500', '80800', '388054', '31062778500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200910', '59200', '59900', '59100', '60000', '29923293', '1781328402942', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200910', '93200', '91100', '90500', '95000', '2880767', '269137160800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200911', '78400', '76700', '76300', '78500', '2831262', '219991757400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200911', '189000', '183000', '183000', '189500', '110083', '20638065000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200911', '78900', '79300', '78200', '79700', '202874', '15984323900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200911', '59000', '59300', '58200', '59400', '16017098', '942685984646', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200911', '92400', '93200', '89700', '93900', '1507008', '137801790700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200914', '80000', '79100', '78900', '80100', '4099644', '326791141400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200914', '189000', '189500', '188500', '192000', '93087', '17659898500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200914', '78200', '79300', '78100', '79400', '265172', '20839660100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200914', '60400', '60200', '59900', '60800', '20648281', '1245767959295', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200914', '92100', '93500', '91300', '94900', '1226790', '113793125900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200915', '81900', '81300', '80200', '82100', '5899410', '481035213300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200915', '189500', '188000', '186500', '190000', '67965', '12821818500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200915', '78000', '78200', '77500', '78700', '234892', '18315403200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200915', '61000', '60900', '60500', '61000', '17877075', '1086697538650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200915', '91800', '92000', '90700', '93100', '952767', '87798569900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200916', '81500', '81700', '80500', '82400', '3119110', '253675146400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200916', '190000', '191000', '189500', '193000', '73719', '14071068000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200916', '78200', '77400', '77400', '78800', '275851', '21581520600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200916', '61000', '61100', '60600', '61300', '17041444', '1038410020500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200916', '90600', '91200', '90300', '93300', '815205', '74427540300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200917', '82200', '81900', '81200', '82900', '4055050', '332692384768', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200917', '187500', '189500', '187000', '192000', '85350', '16147071500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200917', '80800', '77900', '76900', '81300', '510605', '40311322903', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200917', '59500', '60700', '59300', '60800', '25108356', '1501982218002', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200917', '90600', '91000', '88900', '91200', '870174', '78257707000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200918', '83700', '82900', '82200', '83900', '5199334', '432538562400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200918', '186500', '188000', '186000', '188500', '78831', '14725545000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200918', '78900', '81900', '78900', '81900', '440945', '35128183791', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200918', '59300', '59800', '59100', '59900', '18884571', '1121249648513', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200918', '89900', '90700', '88700', '90900', '931059', '83472596700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200921', '84500', '83700', '83600', '85000', '4102947', '346936913500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200921', '184000', '187000', '184000', '189000', '46811', '8720261000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200921', '77200', '78900', '77000', '79300', '230648', '17997623000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200921', '59200', '59100', '59000', '60000', '15140387', '901307763394', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200921', '90900', '90100', '89400', '92500', '1050515', '95920777300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200922', '81300', '84400', '80200', '84800', '4139983', '340340683784', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200922', '180000', '184000', '180000', '186500', '78330', '14262996000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200922', '74600', '77200', '74100', '77200', '295013', '22254245908', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200922', '58200', '59100', '57800', '59700', '20830381', '1220859748740', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200922', '88900', '90400', '88000', '91400', '1054942', '94000527400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200923', '83600', '82300', '80500', '84800', '4439085', '367169323600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200923', '179500', '180000', '179000', '184000', '98253', '17731915500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200923', '74700', '74900', '74400', '76700', '246226', '18497400200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200923', '58600', '58400', '57400', '58800', '20111398', '1168864315200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200923', '91200', '89500', '88000', '91500', '1121711', '100787709400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200924', '84300', '82800', '82300', '85400', '6401560', '541562339800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200924', '182500', '179000', '176500', '182500', '119219', '21461951500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200924', '72200', '74500', '72100', '74500', '312010', '22745933968', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200924', '57800', '57700', '57600', '58600', '17564020', '1017854385100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200924', '89500', '89600', '89500', '91500', '1150871', '104232027100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200925', '82900', '85800', '82200', '85900', '3205596', '268532032600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200925', '178500', '184000', '178500', '184000', '74906', '13512604500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200925', '72100', '73200', '71900', '73200', '244132', '17660519000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200925', '57900', '57700', '57700', '58200', '11444683', '662845003372', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200925', '92900', '91000', '90200', '93700', '1625943', '150537883800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200928', '82500', '83400', '81300', '83700', '3154068', '259586124900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200928', '179500', '180000', '179000', '181500', '45915', '8267626000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200928', '73000', '72400', '72300', '73800', '171717', '12554952100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200928', '58200', '58300', '57900', '58800', '12614080', '736197322600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200928', '91700', '93800', '91500', '94500', '905918', '83938397300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200929', '84000', '83100', '82200', '84900', '4707898', '396447085300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200929', '182000', '182000', '180500', '184500', '80896', '14755462500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200929', '74100', '74000', '73700', '76400', '394367', '29426795700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200929', '58200', '58300', '58200', '59000', '15503563', '906226742600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20200929', '91700', '92700', '91500', '93400', '808542', '74642663800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201005', '83200', '83000', '82300', '84100', '3396894', '282884127576', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201005', '185000', '180500', '180500', '186500', '97162', '17881355000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201005', '75600', '75000', '73000', '76000', '253876', '19050692400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201005', '58700', '57500', '57500', '59200', '20228289', '1183456525264', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201005', '92100', '91000', '90900', '93500', '1007727', '92873048600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201006', '83000', '84000', '82600', '84200', '2750145', '228785586609', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201006', '185000', '184000', '183500', '187000', '50288', '9312306000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201006', '76800', '75400', '75300', '77800', '253772', '19540109091', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201006', '59000', '59400', '58700', '59900', '14463826', '856996117132', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201006', '94400', '93500', '93200', '98500', '2733167', '262210126600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201007', '83400', '82900', '82500', '83700', '2254356', '187490033150', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201007', '187500', '183000', '182500', '187500', '75003', '13907533000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201007', '76400', '76100', '75600', '76800', '231793', '17643376100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201007', '59900', '58700', '58500', '59900', '14861838', '881415107100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201007', '96100', '94400', '92800', '96300', '1263545', '119788664043', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201008', '82900', '84300', '82900', '84500', '3330824', '277459883800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201008', '186500', '188000', '185000', '189000', '119669', '22320690000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201008', '77200', '76700', '76600', '77800', '314527', '24326771376', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201008', '59700', '60500', '59500', '60700', '24589924', '1473634246833', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201008', '93300', '97000', '92700', '98900', '2181852', '208490953200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201012', '85500', '83900', '83500', '85500', '4464264', '379388682000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201012', '183000', '186000', '182500', '186500', '87284', '16015896500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201012', '75600', '77300', '75600', '77500', '257547', '19701097600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201012', '60400', '60000', '59900', '60400', '16145837', '972249295640', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201012', '91900', '93600', '91000', '93800', '1139080', '105007154000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201013', '88200', '85500', '84600', '89000', '6375448', '553188776354', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201013', '182000', '183000', '181500', '184500', '72992', '13300851500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201013', '75500', '75700', '74600', '76500', '162967', '12289006800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201013', '60900', '61000', '60400', '61400', '19247631', '1171363073700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201013', '91700', '92500', '91300', '93800', '1015570', '94069102700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201014', '86500', '88000', '86100', '88900', '3223767', '281533136850', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201014', '181500', '182000', '181500', '184500', '104462', '19026202750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201014', '74200', '75200', '74200', '75900', '185980', '13898640600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201014', '60900', '61000', '60500', '61100', '16086716', '978464277839', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201014', '91400', '92700', '90600', '92800', '847948', '77707422800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201015', '87100', '86100', '85900', '87300', '2802900', '242746343700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201015', '180000', '181000', '180000', '182500', '73613', '13305276000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201015', '73400', '74000', '72800', '74400', '317628', '23329336735', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201015', '60000', '60700', '59700', '60800', '17756232', '1066156791500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201015', '91400', '91500', '91100', '92400', '678538', '62147854500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201016', '85300', '87000', '84900', '87900', '2435541', '209686982700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201016', '180500', '180500', '180000', '182500', '80437', '14581014500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201016', '72000', '74300', '72000', '74300', '305568', '22100175549', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201016', '59500', '60000', '59000', '60400', '16554190', '987630872630', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201016', '89900', '91600', '89200', '92200', '749853', '67524728200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201019', '86700', '86100', '85800', '87900', '3150011', '274650442600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201019', '187000', '182000', '181000', '188000', '204000', '37847953000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201019', '71500', '72400', '71500', '73000', '256976', '18517161000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201019', '60000', '59600', '59500', '60200', '14474985', '867445905100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201019', '89100', '90500', '88700', '90600', '487840', '43704825500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201020', '85200', '85300', '83700', '90900', '6622637', '567966165400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201020', '186000', '185500', '184000', '187500', '86008', '16006847000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201020', '72200', '70300', '70300', '72400', '225643', '16186374849', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201020', '60900', '60300', '60100', '60900', '19326115', '1172317250906', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201020', '90700', '87600', '87600', '90700', '498432', '44553305700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201021', '83800', '85300', '82800', '86200', '4925877', '414313821100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201021', '185500', '186000', '184500', '188000', '121923', '22692539500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201021', '72400', '72000', '72000', '72900', '183940', '13324278500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201021', '60900', '61200', '60600', '61500', '15703443', '959154941000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201021', '90400', '91400', '89800', '91400', '502901', '45389625300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201022', '83300', '84200', '82500', '84300', '2593975', '215562088236', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201022', '191500', '185000', '183500', '192000', '176072', '33376972000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201022', '72500', '72400', '71500', '72500', '178168', '12821765395', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201022', '60100', '60300', '59800', '60500', '14294095', '858048333246', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201022', '88400', '90300', '87500', '90300', '598631', '53055470700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201023', '83900', '82800', '82300', '84700', '2609595', '218627671300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201023', '195500', '192500', '191000', '196500', '198980', '38755022500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201023', '72200', '72600', '71800', '72700', '139890', '10109817700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201023', '60200', '60400', '59800', '60400', '9322232', '560419899005', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201023', '89600', '89000', '88600', '89700', '453141', '40416126200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201026', '83200', '84300', '83000', '84700', '1662847', '139286481800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201026', '193500', '200000', '193000', '205000', '196330', '38695252000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201026', '71600', '71700', '71000', '72700', '199002', '14256244400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201026', '60400', '60400', '60100', '61100', '13268226', '803140204300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201026', '89100', '89400', '88600', '89800', '397433', '35362333400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201027', '82600', '82300', '81800', '83400', '2265817', '187252358800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201027', '191500', '191500', '189000', '195000', '130761', '25153555500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201027', '70700', '71200', '70300', '71800', '250155', '17773184100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201027', '59800', '60300', '59500', '60300', '17260416', '1032623352660', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201027', '89400', '88800', '88600', '90600', '523862', '46877145200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201028', '82900', '82100', '82000', '83600', '1773556', '146796077400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201028', '190000', '189000', '187500', '193500', '96099', '18250883000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201028', '72000', '70300', '70300', '72000', '171473', '12211741700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201028', '59000', '59400', '58800', '59400', '14428882', '851618619425', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201028', '90000', '88900', '88800', '90200', '375683', '33659409900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201029', '81700', '81900', '81000', '82400', '2637314', '214752630200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201029', '185500', '187500', '184500', '188500', '97191', '18077333000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201029', '70300', '71100', '70000', '71100', '236380', '16635617800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201029', '58100', '58200', '57500', '58500', '22636966', '1313484238200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201029', '87200', '88900', '86800', '89200', '786668', '68882335600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201030', '79900', '81600', '79900', '82100', '2710477', '219064698950', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201030', '179000', '185500', '178000', '186000', '162617', '29461846000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201030', '67800', '70700', '67800', '70700', '433120', '29734715400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201030', '56600', '58000', '56600', '58000', '26907844', '1541223383000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201030', '84000', '87300', '83400', '87400', '981485', '83267218600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201102', '79600', '80200', '79200', '80600', '2000394', '159651019600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201102', '185500', '181000', '179000', '187500', '125818', '23033118000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201102', '68500', '68000', '67600', '69000', '186750', '12755385000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201102', '57400', '56400', '56000', '57500', '20489076', '1165272782935', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201102', '85500', '85300', '84400', '86300', '510392', '43559017300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201103', '81400', '79600', '79600', '81400', '2057723', '166103818500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201103', '187000', '184500', '183500', '189000', '108443', '20254999500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201103', '70600', '68500', '68500', '70600', '204096', '14278426800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201103', '58800', '57900', '57600', '58900', '14950919', '873635908544', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201103', '86300', '85800', '85700', '87100', '409909', '35390518000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201104', '83200', '82100', '81200', '84400', '3782296', '313471937300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201104', '183000', '187500', '182000', '189000', '143573', '26631748500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201104', '70800', '71000', '69800', '71500', '217817', '15386587600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201104', '58500', '58900', '57800', '59000', '21718561', '1269055231850', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201104', '86100', '88100', '86000', '88100', '602908', '52297511200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201105', '86100', '84100', '83300', '86200', '4082325', '348613876600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201105', '183500', '183000', '182500', '185000', '113388', '20810323500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201105', '71100', '70900', '70600', '71600', '323615', '22988861900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201105', '60300', '59000', '58800', '60300', '20639475', '1232654470000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201105', '86500', '86600', '85900', '87100', '754241', '65038544800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201106', '86300', '86500', '86000', '87700', '2863808', '247944677300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201106', '182500', '185000', '182000', '185000', '87456', '15985474500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201106', '73300', '71000', '70200', '73500', '418782', '30267956100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201106', '60100', '60700', '59600', '60800', '16910230', '1015446062300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201106', '87100', '86700', '86100', '87200', '707090', '61285910400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201109', '86000', '86500', '85600', '87300', '2444330', '211176309559', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201109', '184500', '183000', '182000', '185500', '96149', '17702049000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201109', '72900', '74300', '72600', '74500', '314863', '23113460768', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201109', '60200', '60700', '60100', '60900', '15892961', '962261517220', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201109', '87300', '87900', '87100', '88300', '586050', '51226219100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201110', '86500', '86900', '85900', '87200', '2849783', '246334269000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201110', '195000', '186000', '185000', '195500', '276339', '52960486000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201110', '74000', '74100', '73100', '74200', '432878', '31927088700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201110', '60200', '60500', '59500', '60500', '19073552', '1144230876258', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201110', '85900', '87800', '85500', '87800', '898189', '77216242500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201111', '87000', '86100', '85900', '87200', '2638617', '229019677500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201111', '196000', '194000', '194000', '202000', '213081', '42010564000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201111', '76900', '74000', '74000', '76900', '437417', '33139826200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201111', '61300', '60700', '60400', '61400', '25628510', '1562195790430', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201111', '86800', '86000', '85800', '87200', '960361', '83036696400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201112', '88100', '87600', '87000', '88400', '4006433', '351888492600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201112', '192000', '198000', '191000', '198000', '171059', '32970884500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201112', '75500', '76100', '74500', '76300', '462629', '34862726000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201112', '61000', '61000', '60700', '61400', '19800573', '1208396630080', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201112', '86100', '87100', '85700', '87200', '781666', '67388614900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201113', '89700', '88100', '87500', '90000', '3774278', '337060042300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201113', '195000', '191500', '191000', '200000', '170002', '33324273500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201113', '74500', '74500', '74200', '75300', '234322', '17490755600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201113', '63200', '61300', '61000', '63200', '31508829', '1962139786626', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201113', '85600', '85900', '85200', '86400', '592333', '50671132500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201116', '98000', '92100', '91100', '98100', '9274278', '885204121740', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201116', '195500', '198500', '194500', '198500', '121941', '23857418500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201116', '74500', '74600', '73800', '75100', '359385', '26758888600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201116', '66300', '64000', '63900', '66700', '36354334', '2384455883700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201116', '86500', '86500', '86300', '87500', '807027', '70026405500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201117', '98100', '97400', '96500', '99600', '5218295', '513426181370', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201117', '192500', '194000', '192000', '196000', '170218', '32920264000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201117', '74000', '74200', '73500', '74900', '368034', '27226989644', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201117', '65700', '67000', '65600', '67000', '30204089', '1999330006280', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201117', '85000', '86600', '84800', '87100', '1066813', '91384082636', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201118', '98000', '99800', '96600', '100500', '3734037', '366662518288', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201118', '202500', '192500', '192000', '207000', '314019', '62932460500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201118', '75200', '73600', '73600', '75300', '352757', '26365135800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201118', '64800', '65700', '64700', '66200', '22963790', '1495190594762', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201118', '88800', '85400', '85100', '89500', '2116015', '186284001000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201119', '98200', '96200', '96000', '98300', '2766688', '269481229700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201119', '206000', '205000', '201000', '212000', '379006', '78972752500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201119', '75400', '75200', '74700', '75800', '333483', '25065081240', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201119', '64600', '64100', '63900', '64800', '16590290', '1066784816800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201119', '89100', '90300', '88500', '90700', '1219430', '109160323300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201120', '96800', '99000', '96800', '99000', '2424003', '236121198500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201120', '206000', '206000', '202500', '210500', '170622', '35108006000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201120', '75900', '74800', '74800', '76000', '239498', '18082927200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201120', '64700', '63900', '63900', '65200', '15068682', '973133163547', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201120', '88700', '89700', '87800', '90200', '588066', '52160115800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201123', '100000', '97300', '96600', '101000', '4149013', '413915943700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201123', '206500', '207000', '205000', '210500', '145121', '30143873500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201123', '75900', '76200', '75300', '77300', '340595', '26037234000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201123', '67500', '64800', '64700', '67800', '27134398', '1811363067200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201123', '89200', '89100', '87700', '89900', '746317', '66544512400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201124', '98600', '101000', '98300', '102000', '3766043', '375181810246', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201124', '205000', '207500', '203000', '207500', '169643', '34721568000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201124', '77200', '75900', '75900', '77400', '469395', '36070333900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201124', '67700', '67900', '67000', '69500', '32158235', '2194516840235', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201124', '88600', '89400', '88000', '89500', '871390', '77195961700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201125', '97200', '100500', '96300', '100500', '4081524', '400555988900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201125', '203000', '205500', '199500', '206500', '201301', '40844359000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201125', '78200', '77600', '77500', '79500', '713819', '56159083500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201125', '66600', '67900', '66500', '68300', '32447065', '2185553286350', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201125', '87500', '89100', '86600', '89500', '1022025', '89993070200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201126', '99400', '96800', '96300', '99500', '2933290', '288277274800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201126', '203000', '199500', '198000', '205500', '191083', '38720875500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201126', '77200', '77400', '76500', '78700', '333781', '25786438700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201126', '68000', '66100', '66000', '68000', '19023323', '1279790447375', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201126', '87000', '87500', '86300', '88300', '741023', '64468576600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201127', '98800', '99600', '98200', '99900', '1976047', '195380321200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201127', '198500', '207000', '198500', '210000', '546159', '110682987750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201127', '75200', '77600', '75200', '77600', '401533', '30535166394', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201127', '68200', '68000', '67600', '68400', '14063434', '957450603551', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201127', '87800', '87000', '86800', '88000', '750504', '65529709200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201130', '97500', '99700', '97300', '99800', '3877841', '379627794667', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201130', '188000', '198500', '188000', '199000', '688925', '131090938500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201130', '70600', '74900', '70600', '75200', '1176464', '84625629200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201130', '66700', '68400', '66700', '68600', '43811016', '2946475687804', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201130', '85500', '87800', '85500', '87900', '1428395', '122906143600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201201', '100500', '98600', '97800', '101500', '4455519', '446056404700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201201', '190000', '191000', '189000', '194000', '277576', '52971411500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201201', '72600', '71700', '71700', '72900', '466949', '33879848300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201201', '67800', '67100', '67100', '68300', '22327173', '1513603485956', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201201', '86000', '86100', '85500', '86500', '693134', '59495242600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201202', '109000', '103000', '103000', '109500', '7488361', '803615355500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201202', '192500', '190500', '188000', '193000', '258905', '49258180500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201202', '73300', '73000', '72500', '73400', '496930', '36287981300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201202', '69500', '68400', '68300', '69900', '29703942', '2060700628380', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201202', '85900', '86300', '85500', '86300', '818536', '70188409500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201203', '111500', '110500', '109000', '114500', '6617912', '735573889408', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201203', '191500', '191000', '189500', '192000', '237495', '45266830000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201203', '73300', '73100', '72500', '73300', '538833', '39287947900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201203', '69700', '70100', '69300', '70500', '23677989', '1654493266700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201203', '90300', '86800', '86600', '90300', '2391369', '212265356400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201204', '115000', '116000', '112500', '119500', '8258814', '958024798000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201204', '192000', '191000', '190000', '193000', '278155', '53303971000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201204', '74100', '73300', '73000', '74600', '791297', '58625725016', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201204', '71500', '70400', '70100', '72100', '28130533', '2010489248016', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201204', '90500', '90000', '89100', '91500', '1763876', '159068480400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201207', '118000', '118500', '116000', '120000', '5191354', '613379321750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201207', '189000', '191000', '188000', '191500', '214436', '40510571000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201207', '74700', '74300', '73400', '74700', '407588', '30204337476', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201207', '72900', '72400', '71900', '73500', '28490496', '2071956768562', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201207', '89200', '92000', '89000', '92200', '1278901', '115230990000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201208', '115000', '118000', '114000', '118000', '4536460', '524960729736', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201208', '186500', '189500', '186500', '190000', '187019', '35055307000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201208', '75000', '75300', '74400', '75400', '442942', '33162985972', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201208', '71700', '72200', '71600', '72900', '25000338', '1804281313280', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201208', '95000', '91000', '90900', '96500', '4702429', '445296061000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201209', '120500', '116000', '115000', '121000', '5490760', '651044989000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201209', '187500', '187000', '187000', '189000', '153833', '28906157000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201209', '77000', '75000', '75000', '77300', '510984', '39220371800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201209', '73900', '72100', '72000', '73900', '24077996', '1758752959520', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201209', '96200', '96800', '95000', '98000', '2114941', '203441489800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201210', '116500', '117000', '115500', '118500', '8205744', '959915015500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201210', '187000', '188500', '186000', '189500', '278983', '52271108500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201210', '75800', '77000', '75100', '77000', '587440', '44653106820', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201210', '72900', '72700', '72500', '73800', '39882928', '2916536731883', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201210', '95400', '95100', '93800', '95800', '1691356', '160693950000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201211', '115500', '118000', '115000', '118000', '3944552', '458289098500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201211', '193000', '188500', '187500', '194000', '284992', '54799228500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201211', '77900', '76100', '76000', '78900', '644502', '50015030500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201211', '73400', '73500', '73100', '73800', '18486672', '1356958867500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201211', '95800', '96100', '94900', '97100', '1013826', '97038512200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201214', '117000', '116000', '115500', '119000', '3066761', '359109177587', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201214', '192000', '193500', '191000', '194500', '166321', '32009073000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201214', '77100', '77900', '77100', '78700', '454209', '35273638500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201214', '73800', '73600', '73200', '74500', '21510415', '1590299594150', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201214', '95000', '95400', '94000', '95700', '1013069', '96167735600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201215', '117500', '118500', '115000', '118500', '2755902', '321349838500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201215', '196000', '192000', '191000', '196000', '217207', '42246671000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201215', '78000', '77000', '76500', '78300', '408055', '31648487400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201215', '73800', '73800', '73300', '74100', '20863671', '1538015446864', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201215', '93400', '94500', '93000', '94900', '1094196', '102504112200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201216', '117500', '119000', '117000', '119500', '2213552', '260552844500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201216', '196500', '198000', '194500', '198500', '110158', '21596542000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201216', '78900', '79400', '78400', '79400', '519388', '40973185300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201216', '73800', '74100', '73400', '74500', '17512081', '1291858716200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201216', '97300', '94200', '94200', '97500', '1785477', '172511782300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201217', '119500', '118500', '117000', '119500', '3649945', '432269984000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201217', '197000', '196500', '192000', '197500', '182841', '35751317500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201217', '78300', '79000', '77900', '79000', '304806', '23878522208', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201217', '73300', '73400', '72600', '73700', '24293214', '1777212529448', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201217', '96900', '97000', '96000', '97800', '1038351', '100643558000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201218', '118500', '118500', '117500', '119000', '3010798', '355947794780', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201218', '196000', '196000', '195000', '198000', '128893', '25363329500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201218', '78500', '78100', '78000', '78900', '395261', '31006376445', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201218', '73000', '73300', '73000', '73700', '17613029', '1289758794110', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201218', '95800', '97300', '95700', '97400', '835663', '80373237450', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201221', '116000', '118000', '114500', '118000', '3585805', '414706891903', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201221', '196500', '196000', '194000', '197000', '97682', '19081453534', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201221', '78600', '78400', '77400', '78800', '506004', '39500850350', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201221', '73000', '73100', '72000', '73400', '20367355', '1477330803829', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201221', '94900', '95800', '93600', '95900', '946927', '89484332700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201222', '112500', '115000', '112500', '115500', '4270842', '485295511328', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201222', '194000', '194500', '193500', '198500', '149141', '29248259500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201222', '78300', '78800', '78000', '79400', '425319', '33480642300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201222', '72300', '72500', '72100', '73200', '16304910', '1183242835700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201222', '92200', '94600', '91800', '94700', '943385', '87891221400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201223', '116000', '113000', '112500', '116000', '3173156', '363208092500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201223', '194000', '195000', '192500', '195500', '115285', '22343481000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201223', '86400', '78900', '77400', '97700', '7758366', '686894869600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201223', '73900', '72400', '72300', '74000', '19411326', '1419205113900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201223', '119500', '92700', '91100', '119500', '16565841', '1829404002900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201224', '118000', '116000', '115500', '118500', '3486636', '409772029000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201224', '195500', '194500', '193500', '195500', '113385', '22068985000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201224', '85000', '88600', '81300', '89600', '1473751', '124802350300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201224', '77800', '74100', '74000', '78800', '32502870', '2486986812800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201224', '112000', '125000', '110500', '128500', '11918248', '1399545185500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201228', '115500', '119000', '115000', '119500', '4825132', '567198040500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201228', '196000', '196500', '194000', '197000', '234055', '45685946500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201228', '87600', '85900', '85100', '90600', '1378259', '121549143900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201228', '78700', '79000', '78200', '80100', '40085044', '3172810866091', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201228', '124500', '114500', '113000', '136500', '21982050', '2805020030500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201229', '116000', '118000', '114000', '118500', '4208916', '488461750000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201229', '188000', '190000', '186000', '190000', '252942', '47512631000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201229', '86000', '87000', '85100', '88200', '659811', '56971921700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201229', '78300', '78800', '77300', '78900', '30339449', '2368814098000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201229', '131500', '127500', '125000', '134500', '7476122', '969108882500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201230', '118500', '116000', '114500', '118500', '4195192', '489962294500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201230', '187500', '188500', '186500', '188500', '144605', '27108783500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201230', '87500', '86000', '84600', '88300', '569772', '49368172700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201230', '81000', '77400', '77300', '81300', '29417421', '2344317462700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20201230', '135000', '128000', '128000', '136000', '1533422', '203318845500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210104', '126000', '124500', '120500', '128000', '7995016', '994276505704', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210104', '183000', '186000', '182000', '186500', '265130', '48741967500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210104', '96900', '88000', '86900', '102500', '2269706', '216021698000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210104', '83000', '81000', '80200', '84400', '38655276', '3185356823460', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210104', '142000', '136500', '136500', '144000', '1868234', '263117123000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210105', '130500', '124500', '124000', '132500', '7180224', '920710588023', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210105', '186500', '183000', '182000', '187000', '177112', '32622785000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210105', '98300', '95300', '94500', '98700', '992337', '95757427000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210105', '83900', '81600', '81600', '83900', '35335669', '2915618322800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210105', '140000', '139000', '137000', '140000', '1602818', '221793717000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210106', '131000', '132500', '130000', '137000', '8525749', '1132130170500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210106', '185000', '185000', '183500', '187000', '211938', '39220506500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210106', '97300', '99200', '96300', '100500', '975477', '96504689700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210106', '82200', '83300', '82100', '84500', '42089013', '3506903681680', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210106', '137500', '148500', '137000', '150500', '5283488', '749669940500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210107', '134500', '132500', '131500', '137500', '5981299', '810152555214', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210107', '189000', '187000', '186000', '190000', '246514', '46500890500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210107', '107500', '98300', '98000', '119000', '3425106', '374409997800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210107', '82900', '82800', '82700', '84200', '32644642', '2726112459660', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210107', '150000', '139500', '137000', '155000', '9782722', '1443408210000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210108', '138000', '136000', '132500', '138000', '8713010', '1181148895500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210108', '190500', '190000', '187500', '191000', '248713', '47113840500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210108', '105500', '107500', '102500', '112000', '1765225', '188392374000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210108', '88800', '83300', '83000', '90000', '59013307', '5083939899952', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210108', '147500', '145000', '140500', '151000', '9472733', '1384820933500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210111', '133000', '138000', '131000', '140000', '11154671', '1509734062000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210111', '184000', '190000', '183000', '190500', '360159', '66931228000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210111', '103000', '104500', '99100', '106500', '1480190', '151426500000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210111', '91000', '90000', '89500', '96800', '90306177', '8379237727064', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210111', '142000', '148500', '138000', '152000', '6584433', '955661189500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210112', '129000', '132000', '125500', '133500', '8700877', '1121945369000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210112', '184500', '185000', '182500', '185500', '175474', '32257871500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210112', '102000', '100000', '99300', '104000', '1051249', '106498559920', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210112', '90600', '90300', '87800', '91400', '48682416', '4362546108950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210112', '138500', '140500', '135000', '147500', '4585235', '642869736000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210113', '133000', '129000', '128500', '133500', '6791044', '891281070500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210113', '188000', '185500', '184000', '188000', '216215', '40367259000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210113', '103500', '102000', '100500', '105000', '711052', '73239500000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210113', '89700', '89800', '89100', '91200', '36068848', '3244066562850', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210113', '140000', '141000', '137000', '143500', '2589622', '361777874000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210114', '130500', '132500', '129000', '133000', '5380278', '702426036508', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210114', '189000', '187500', '186000', '189500', '209063', '39398171000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210114', '108500', '102500', '102000', '109500', '1006769', '108036864932', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210114', '89700', '88700', '88700', '90000', '26393970', '2356661622700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210114', '147000', '138500', '138500', '150500', '5618859', '822124752500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210115', '127500', '133000', '127000', '135000', '4838114', '627291098793', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210115', '186000', '190500', '185000', '190500', '176570', '33005739500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210115', '106000', '109000', '105500', '109500', '727447', '78057096500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210115', '88000', '89800', '88000', '91800', '33431809', '2975231937664', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210115', '140000', '145500', '139500', '146000', '3051738', '434184693500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210118', '130000', '126000', '125000', '131000', '5927419', '758360216500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210118', '181500', '185500', '180500', '186500', '209065', '38110302000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210118', '102000', '104500', '101000', '106000', '513881', '52640982000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210118', '85000', '86600', '84100', '87300', '43227951', '3715775992600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210118', '139000', '141500', '138500', '145000', '2469549', '348768547500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210119', '130500', '131000', '128500', '132000', '4513315', '589182407500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210119', '183000', '183000', '181000', '183000', '139232', '25356646500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210119', '103000', '102000', '100500', '106000', '534024', '55116699500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210119', '87000', '84500', '83600', '88000', '39895044', '3441342754500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210119', '148000', '140000', '139000', '149500', '4114713', '600374921000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210120', '130500', '134000', '130000', '135000', '4913282', '649021375524', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210120', '182000', '183000', '180000', '183000', '207192', '37487759000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210120', '108500', '104500', '102000', '108500', '807210', '85103557000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210120', '87200', '89000', '86500', '89000', '25211127', '2205739149700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210120', '167000', '148500', '146500', '167000', '10340439', '1636445090000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210121', '131500', '131500', '130000', '133000', '3067677', '402667707500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210121', '183000', '181500', '181000', '185000', '178551', '32669677500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210121', '115500', '110000', '107500', '118000', '1853456', '210504844500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210121', '88100', '87500', '86500', '88600', '25318011', '2211209788500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210121', '185000', '168500', '163500', '192500', '16304954', '2891884123500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210122', '128500', '131500', '128500', '132000', '3927767', '511059802500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210122', '180000', '182000', '180000', '182000', '229012', '41415427500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210122', '107000', '112500', '107000', '116500', '1249988', '139229630000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210122', '86800', '89000', '86800', '89700', '30861661', '2717635251520', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210122', '177500', '183000', '177500', '193000', '7015098', '1294427248000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210125', '135000', '130000', '129500', '135000', '5061864', '675657932860', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210125', '180000', '180500', '179000', '181500', '162634', '29265789000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210125', '110500', '108000', '106000', '111500', '554639', '60860206000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210125', '89400', '87000', '86300', '89900', '27258534', '2410066876846', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210125', '178000', '177500', '174500', '181000', '2710809', '482325586000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210126', '129000', '134000', '128500', '134000', '6270106', '816274767458', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210126', '176500', '180000', '176500', '180500', '225825', '40194323000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210126', '104500', '111000', '104000', '112000', '863557', '92539642000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210126', '86700', '88800', '86500', '89200', '33178936', '2899318433100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210126', '170000', '179000', '169000', '181500', '3706727', '643397004500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210127', '128500', '129500', '127500', '132000', '5068456', '656028088120', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210127', '175000', '178500', '175000', '179000', '157252', '27761230000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210127', '103000', '105000', '101500', '106500', '621756', '64731920000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210127', '85600', '86600', '85600', '87700', '26423070', '2282487598000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210127', '167000', '170000', '166500', '175500', '3244402', '551757401500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210128', '123000', '124000', '121500', '125500', '6270829', '774835802830', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210128', '174500', '173500', '172000', '174500', '178026', '30834062500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210128', '103500', '100000', '100000', '106500', '578577', '59830746000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210128', '83700', '83200', '83200', '85600', '31859808', '2676569098000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210128', '164500', '163500', '161500', '167000', '2465978', '404813458500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210129', '122500', '128500', '121500', '128500', '7391307', '921708206384', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210129', '168000', '175500', '168000', '175500', '287991', '48983588500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210129', '99100', '104000', '99000', '105000', '748985', '75519263500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210129', '82000', '84500', '82000', '85000', '39615978', '3292344404628', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210129', '153000', '166500', '150500', '166500', '5396272', '842611694000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210201', '125000', '121000', '118000', '126000', '5620305', '690136396500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210201', '170500', '168000', '167000', '173500', '167662', '28691438500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210201', '103000', '98500', '97300', '103500', '488664', '49456022400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210201', '83000', '81700', '81000', '83400', '28046832', '2311656941176', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210201', '158000', '153500', '150000', '159000', '3617362', '559279981500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210202', '130000', '128500', '127000', '132500', '4880067', '633539068640', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210202', '170500', '171000', '170000', '173500', '163412', '27997450000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210202', '102500', '102500', '102000', '106000', '453180', '46998784911', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210202', '84400', '84100', '83700', '86400', '26302077', '2234863449476', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210202', '158000', '160000', '156000', '164000', '2620315', '418544774000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210203', '130000', '131000', '128500', '131500', '3693688', '480587348500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210203', '170000', '171000', '169000', '172000', '146999', '25021273500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210203', '103500', '103500', '102500', '105000', '443558', '45822188000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210203', '84600', '84800', '83400', '85400', '22112205', '1864450334050', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210203', '165000', '160500', '159000', '166000', '3179393', '516828248000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210204', '125000', '127500', '124000', '128500', '4600618', '577965896500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210204', '167500', '170500', '166500', '171000', '230415', '38604773000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210204', '102000', '103000', '101000', '104000', '535836', '54736022617', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210204', '82500', '83500', '82100', '83800', '24171688', '2000202343000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210204', '157500', '163000', '156000', '163000', '2660265', '421649707000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210205', '127500', '126500', '124500', '128000', '3497303', '441554489000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210205', '168000', '168000', '166000', '169000', '245604', '41072725586', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210205', '104000', '102500', '102000', '104500', '428740', '44320898000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210205', '83500', '83100', '82500', '84000', '18036835', '1499217618600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210205', '158000', '159000', '154500', '160500', '1914947', '301720636000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210208', '125000', '127500', '125000', '128000', '2876471', '363162815286', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210208', '170000', '168500', '168500', '171500', '187336', '31865966000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210208', '104000', '105000', '104000', '107000', '549545', '57962607000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210208', '83000', '83800', '83000', '84200', '15338765', '1281925400900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210208', '157000', '158000', '157000', '163500', '1895740', '301893102500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210209', '125500', '127500', '125000', '130000', '5177095', '661250037500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210209', '171000', '170000', '169500', '171500', '248384', '42365842000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210209', '105000', '104500', '104000', '108000', '699138', '73952379588', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210209', '82700', '84000', '82700', '84800', '20898332', '1748440766360', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210209', '161000', '158500', '157000', '168000', '3866170', '629447981000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210210', '126000', '125500', '124500', '127000', '4262526', '535406551607', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210210', '169500', '171500', '169500', '172000', '183605', '31219945000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210210', '110000', '106000', '105500', '110500', '700702', '75990475500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210210', '81600', '82600', '81600', '82600', '23025766', '1888591264669', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210210', '167500', '163500', '161000', '168500', '3256875', '541406532000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210215', '132000', '130000', '130000', '132500', '5384526', '706594091200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210215', '172500', '171000', '170500', '175000', '180437', '31243242500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210215', '109500', '112500', '109500', '114500', '517639', '57761489500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210215', '84200', '83800', '83300', '84500', '23529706', '1978336504100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210215', '165000', '170500', '165000', '171000', '2113807', '354261709500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210216', '132500', '132500', '130500', '134000', '3218689', '425572619500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210216', '172000', '173000', '171000', '173500', '137847', '23671882500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210216', '111500', '110000', '109500', '112500', '434814', '48513431500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210216', '84900', '84500', '84200', '86000', '20483100', '1740792201903', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210216', '172500', '167000', '166000', '174000', '3199701', '546283326000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210217', '130000', '131000', '128000', '131000', '3621178', '468148482000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210217', '172000', '171000', '170000', '172500', '160519', '27434264000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210217', '105500', '109000', '105500', '110000', '596989', '63727547000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210217', '83200', '83900', '83000', '84200', '18307735', '1526409421172', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210217', '176000', '172000', '169000', '177000', '2965260', '515032746500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210218', '126000', '128500', '125500', '130000', '3792425', '481974907500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210218', '168500', '171000', '168500', '171500', '219597', '37228947000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210218', '101000', '105000', '101000', '105000', '560427', '57551614000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210218', '82100', '83200', '82100', '83600', '21327683', '1762033944231', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210218', '171000', '175000', '168500', '176500', '2499314', '429952994000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210219', '133000', '129000', '128500', '133000', '6986526', '914800423000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210219', '170500', '170000', '168000', '171000', '249656', '42306357000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210219', '99600', '100500', '97600', '101500', '573959', '56975460900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210219', '82600', '82300', '81000', '82800', '25880879', '2121275310450', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210219', '168000', '170500', '164000', '172500', '2236161', '373688771500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210222', '136500', '136000', '135000', '139500', '7961516', '1092811602500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210222', '175000', '171500', '171000', '179500', '474929', '83635890247', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210222', '95500', '101000', '95400', '101500', '672404', '65579133100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210222', '82200', '83800', '82200', '84200', '25419886', '2113624966100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210222', '166000', '172500', '164500', '174500', '2511075', '424795166000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210223', '138500', '133500', '131500', '140000', '6400037', '873598454500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210223', '177500', '176500', '174500', '178500', '397790', '70288308000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210223', '94600', '95100', '94500', '97100', '503189', '47995972800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210223', '82000', '81200', '81100', '82900', '20587314', '1683933027000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210223', '157500', '161000', '157000', '162000', '2897046', '459905958500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210224', '136000', '137500', '134000', '143500', '9074809', '1264050755000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210224', '173500', '178000', '173500', '178500', '281766', '49479093000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210224', '93900', '95500', '93500', '97000', '519440', '49310450500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210224', '82000', '81800', '81300', '83600', '26807651', '2208585141393', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210224', '150000', '157500', '149000', '159000', '3061646', '469628464000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210225', '148500', '141000', '140000', '149500', '9936495', '1438187787500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210225', '175500', '175000', '173500', '177000', '164455', '28883998000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210225', '96300', '95100', '94300', '97300', '346231', '33183918000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210225', '85300', '84000', '83000', '85400', '34155986', '2880259491180', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210225', '154000', '153500', '151000', '154500', '1755139', '268489692000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210226', '141500', '143500', '138000', '145000', '10843268', '1535498840671', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210226', '173000', '173500', '172000', '174500', '246659', '42672916500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210226', '93900', '94900', '93500', '95500', '833466', '78413818900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210226', '82500', '82800', '82000', '83400', '38520800', '3175845143233', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210226', '146500', '148000', '146000', '150500', '2453529', '361982535000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210302', '144500', '149000', '141000', '150500', '9376523', '1365279622000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210302', '181000', '176500', '176000', '181000', '403111', '72157215000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210302', '93300', '95400', '92400', '97600', '531938', '50423912800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210302', '83600', '85100', '83000', '85300', '33498180', '2823604648915', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210302', '149000', '150500', '147000', '152500', '1552321', '232987720500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210303', '147000', '142500', '139500', '147000', '5827221', '839569020500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210303', '182000', '181000', '179500', '182500', '168664', '30639507500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210303', '94200', '93300', '92500', '94200', '334415', '31336507400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210303', '84000', '83500', '82800', '84000', '19882132', '1659122458768', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210303', '150500', '149000', '148000', '152000', '1033609', '155295552000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210304', '142000', '143000', '139500', '145500', '6586562', '938397280000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210304', '180500', '182000', '179000', '182000', '176119', '31776260500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210304', '92000', '92700', '90800', '93000', '460670', '42302287200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210304', '82400', '82600', '82200', '83200', '24348331', '2010257798200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210304', '146000', '148000', '145000', '148500', '1342531', '196690528000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210305', '140000', '138000', '136500', '141500', '6091444', '844271259500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210305', '183000', '180000', '178500', '185000', '232621', '42612364000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210305', '90800', '90500', '89700', '91500', '387743', '35107041200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210305', '82100', '81100', '81100', '82600', '20508971', '1677602868700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210305', '148500', '142500', '142000', '149500', '1479199', '215538781500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210308', '135500', '143000', '135500', '143000', '5587787', '775259164000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210308', '188000', '185000', '183500', '188000', '262622', '49117616500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210308', '90300', '91600', '90100', '92500', '316716', '28797012900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210308', '82000', '82900', '81600', '83000', '17641256', '1448480913600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210308', '143000', '149500', '142000', '150000', '1165677', '169355755000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210309', '136500', '134000', '130500', '137500', '7822152', '1043442973500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210309', '192500', '189500', '189000', '193000', '410416', '78592595000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210309', '89400', '90700', '87300', '91100', '423134', '37840701200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210309', '81400', '81400', '80600', '81900', '25420764', '2066544317650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210309', '144500', '143500', '142000', '146000', '1530784', '220514693500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210310', '133000', '140500', '132500', '140500', '5614476', '763400710000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210310', '195000', '191000', '190000', '195000', '380529', '73714348000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210310', '88600', '90500', '87700', '91500', '335270', '29878333100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210310', '80900', '82400', '80700', '82500', '20038422', '1632812662321', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210310', '142500', '148500', '142000', '149000', '1143711', '165955074500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210311', '137000', '134500', '134000', '139000', '6707671', '918735821750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210311', '196000', '196000', '192500', '196000', '258982', '50457359500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210311', '91000', '88600', '88500', '91900', '491509', '44680395300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210311', '82000', '81000', '81000', '82500', '23818297', '1952164587512', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210311', '147500', '143500', '143500', '149000', '1651447', '243547152500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210312', '140000', '140500', '139500', '142500', '4548695', '640529865500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210312', '194000', '195500', '192000', '195500', '178956', '34544032500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210312', '91900', '91800', '91500', '93400', '279885', '25874442000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210312', '82800', '83100', '82400', '83500', '13530573', '1121128514600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210312', '152500', '149500', '149500', '154500', '1567260', '238444597000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210315', '136500', '141500', '136000', '142000', '4289990', '594535565128', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210315', '193000', '193000', '191000', '194000', '143314', '27590717500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210315', '91600', '92000', '91000', '92900', '301761', '27733358100', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210315', '81800', '82800', '81800', '82900', '13735798', '1128533403400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210315', '151500', '152500', '150500', '153500', '819248', '124627434500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210316', '140500', '138500', '138000', '140500', '3304561', '461097954500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210316', '190000', '191500', '188500', '193000', '163918', '31240920500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210316', '91000', '91600', '90900', '91900', '292167', '26679288900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210316', '82800', '82200', '82100', '83000', '12293537', '1014280956368', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210316', '158000', '153500', '153000', '159500', '1996472', '313644486000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210317', '140000', '141000', '138500', '141000', '2588319', '361508821193', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210317', '188000', '189500', '188000', '191000', '171033', '32296069972', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210317', '89100', '90700', '88500', '90900', '415363', '37076894300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210317', '82300', '82800', '82000', '82900', '11625146', '957444384952', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210317', '158000', '158000', '155000', '161000', '1543163', '243921393000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210318', '142000', '142500', '141000', '145000', '4426840', '634074763962', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210318', '188000', '188000', '185500', '189500', '170915', '32056500500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210318', '88600', '89900', '88600', '90600', '326174', '29184198800', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210318', '82900', '82800', '82600', '83800', '18585244', '1545980791426', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210318', '155500', '160500', '155500', '161000', '1400789', '220859169500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210319', '138000', '138000', '137000', '139500', '4015627', '555490290001', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210319', '187500', '190000', '187000', '190500', '242914', '45625793500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210319', '88500', '88100', '86900', '88500', '370376', '32550737400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210319', '81900', '82100', '81800', '82500', '15869700', '1301953467700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210319', '153000', '151500', '151500', '154000', '1195480', '182385595000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210322', '138000', '138500', '137000', '140000', '2727719', '377822972114', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210322', '188500', '187500', '185000', '189500', '116855', '21865613000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210322', '88100', '89000', '87500', '89300', '286294', '25237272664', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210322', '82000', '82000', '81700', '82300', '12670506', '1039543136201', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210322', '155000', '154000', '152500', '157000', '962272', '149045555500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210323', '135000', '139000', '134000', '139500', '3839090', '523290811000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210323', '185000', '188000', '184500', '189000', '118428', '21980507000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210323', '86100', '88400', '86100', '88700', '356481', '31058878300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210323', '81800', '82600', '81800', '82900', '13299907', '1092867144552', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210323', '145500', '155000', '145500', '155500', '2053555', '306576515000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210324', '133500', '133000', '131500', '134500', '3894080', '517991222000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210324', '184000', '185000', '183000', '186000', '84116', '15529410000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210324', '85900', '86100', '84900', '86500', '407338', '35000178200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210324', '81000', '81000', '80700', '81600', '17926638', '1454204203800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210324', '146500', '143500', '143500', '147000', '1127948', '164147492500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210325', '133000', '133000', '130500', '134500', '4157799', '550754976000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210325', '188500', '184500', '183500', '189500', '118485', '22248745000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210325', '88000', '86200', '85600', '88300', '422885', '36953708700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210325', '81200', '81000', '80800', '82100', '14758826', '1200699288823', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210325', '148000', '146000', '145000', '150500', '1138392', '168062768500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210326', '135000', '134000', '132000', '135000', '3835443', '513429099500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210326', '186000', '188000', '186000', '189500', '129501', '24249299500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210326', '89200', '88600', '88200', '89900', '372335', '33214030000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210326', '81500', '81400', '81000', '81600', '12845778', '1044261903000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210326', '143000', '147000', '140500', '147000', '1993831', '285570781000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210329', '132000', '135500', '131500', '135500', '3575226', '476795085000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210329', '187000', '186500', '184000', '187000', '95891', '17834262500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210329', '88200', '88800', '86100', '89000', '508667', '44292781954', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210329', '81600', '81700', '81000', '81700', '14952134', '1216567675700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210329', '140500', '143000', '140000', '143500', '1212152', '170759167250', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210330', '134500', '133000', '132000', '135500', '3304184', '443218978500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210330', '188500', '188000', '186500', '189500', '111818', '21062138000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210330', '91400', '89100', '88700', '92700', '603603', '55167021400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210330', '82200', '81600', '81300', '82300', '13121698', '1074968693016', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210330', '152000', '144000', '143500', '153000', '3244882', '485669556500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210331', '132500', '134500', '132000', '135000', '3309680', '441276843000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210331', '190000', '189000', '187000', '191000', '139247', '26444804000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210331', '90400', '91500', '90400', '92400', '343168', '31298097900', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210331', '81400', '82400', '81400', '82700', '17240518', '1413779202400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210331', '150000', '154000', '149500', '156000', '2039038', '312182552000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210401', '140500', '138000', '136500', '140500', '5833436', '807748318500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210401', '189000', '190000', '187000', '191000', '82296', '15538576500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210401', '91300', '90800', '89500', '91400', '339537', '30780823400', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210401', '82900', '82500', '82000', '83000', '18676461', '1542484638200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210401', '159000', '154500', '150500', '160500', '3574578', '560805115500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210402', '141000', '142000', '140000', '143000', '3432245', '485467791000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210402', '186500', '188000', '185500', '189000', '85537', '15980125000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210402', '92500', '91500', '91500', '92600', '301301', '27750988700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210402', '84800', '84000', '83900', '85200', '22997538', '1947586897500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210402', '158500', '159500', '155000', '160000', '1761019', '277912821500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210405', '143000', '142000', '141000', '144500', '2616440', '373549552500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210405', '187500', '185500', '185000', '187500', '43425', '8082130000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210405', '91800', '92600', '91200', '93100', '231742', '21282266600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210405', '85400', '85800', '84800', '86000', '16255990', '1385160353200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210405', '154500', '163000', '153000', '165000', '3827492', '611263544500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210406', '143000', '147000', '141500', '147000', '3753217', '540574718000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210406', '188000', '187000', '187000', '188000', '50403', '9452615000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210406', '90500', '92400', '90500', '92600', '262186', '23927724500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210406', '86000', '86200', '85100', '86200', '19042023', '1633460653000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210406', '160000', '158000', '156500', '162500', '3084796', '493920764935', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210407', '143500', '146000', '142500', '146000', '2424687', '348944024000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210407', '188000', '189000', '187500', '189000', '54384', '10231194500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210407', '91300', '90900', '90600', '91900', '220682', '20127796200', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210407', '85600', '86100', '85400', '86200', '17885538', '1532760739551', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210407', '158500', '160000', '158000', '163500', '2655588', '425711585500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210408', '144000', '143500', '142500', '146000', '3774932', '543862222000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210408', '189500', '188000', '188000', '190500', '117329', '22174636000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210408', '91400', '91600', '90300', '91700', '258736', '23614787300', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210408', '84700', '85700', '84100', '85700', '19244259', '1629938227200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210408', '156500', '160000', '156000', '160500', '1735278', '272848529500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210409', '140000', '144000', '139500', '145000', '3276077', '464472291000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210409', '190000', '190500', '189000', '191000', '110320', '20968537500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210409', '90700', '90500', '90400', '91800', '195525', '17797638700', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210409', '83600', '84700', '83400', '84900', '18193707', '1527078831700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210409', '158500', '157500', '157000', '162500', '1764047', '282190482000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210412', '137500', '140500', '136000', '140500', '3878457', '534353588500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210412', '190500', '189000', '188000', '190500', '62779', '11917040000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210412', '95000', '92500', '92300', '96100', '618231', '58348440500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210412', '83200', '84100', '83100', '84100', '12915282', '1078274477112', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210412', '156500', '159000', '156000', '161000', '1005281', '158885404000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210413', '139500', '136000', '135500', '140000', '2876178', '398264674500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210413', '190500', '191500', '189000', '191500', '94981', '18058206500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210413', '95900', '96100', '94400', '96500', '408947', '39195926500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210413', '84000', '83000', '82800', '84500', '15238206', '1276903128038', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210413', '157500', '156500', '155000', '158500', '1114768', '175133007000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210414', '137000', '139000', '136500', '139000', '2777203', '381902748000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210414', '190000', '190000', '189000', '191000', '87560', '16645764500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210414', '101500', '98100', '97700', '102000', '784271', '78241980600', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210414', '84000', '84000', '83400', '84300', '13794652', '1156326758700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210414', '161500', '163500', '159000', '165000', '2454760', '397188804500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210415', '137500', '136000', '136000', '139000', '2291160', '315231075500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210415', '190500', '190000', '190000', '191500', '105275', '20088001500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210415', '109500', '106000', '105000', '116000', '1925401', '211246806000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210415', '84100', '83700', '83400', '84500', '16377412', '1375438313400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210415', '172000', '162000', '161000', '172000', '5009228', '842856887924', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210416', '137500', '138500', '137500', '139000', '1982877', '273899499636', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210416', '191000', '191000', '190000', '191500', '91730', '17498164970', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210416', '110000', '109000', '106500', '110500', '857705', '93241925000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210416', '83900', '84700', '83600', '84700', '15429522', '1294516674200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210416', '168500', '173000', '166500', '173500', '2328661', '393370266005', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210419', '138000', '138000', '137000', '139000', '1906782', '263337076500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210419', '192500', '191000', '190000', '193000', '126473', '24313968000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210419', '113000', '111000', '110500', '115000', '666360', '75334099500', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210419', '83300', '83800', '83300', '84000', '15287311', '1277281507900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210419', '171000', '170500', '169000', '174500', '2281804', '393692449823', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210420', '138500', '136500', '136500', '138500', '2167732', '297980160500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210420', '194500', '193000', '193000', '196500', '178806', '34900764500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210420', '110500', '112000', '109500', '113000', '594270', '65732707000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210420', '83900', '83300', '83100', '84000', '15521965', '1298185983040', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210420', '172000', '170500', '168500', '172000', '1209405', '205758921500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210421', '132500', '138000', '132000', '138000', '5120577', '689155249952', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210421', '193000', '193500', '192000', '195000', '129255', '24937761000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210421', '109000', '110000', '108000', '110500', '470581', '51427881000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210421', '82600', '83300', '82500', '83500', '21636079', '1792608597200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210421', '166000', '170000', '165500', '170000', '2042543', '341073446000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210422', '133000', '134500', '133000', '135500', '3007457', '402386612000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210422', '196000', '194500', '194000', '197000', '214035', '41941231000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210422', '109000', '110000', '108000', '110500', '407183', '44347394000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210422', '82400', '82900', '82400', '83000', '13934746', '1151303986200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210422', '163500', '167500', '163000', '168500', '1321558', '218772817000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210423', '132500', '130500', '128500', '132500', '4854412', '633954956100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210423', '196000', '195000', '193500', '197500', '150213', '29498147088', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210423', '114500', '109500', '108500', '115000', '639572', '72052829000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210423', '82800', '81900', '81600', '82900', '17805080', '1464208204100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210423', '163500', '161500', '160000', '166500', '1125379', '184576879500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210426', '131500', '132500', '130500', '132500', '2904879', '381267205572', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210426', '199000', '197500', '197500', '200000', '176723', '35142619500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210426', '124000', '116000', '116000', '124000', '1416097', '171111253042', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210426', '83500', '82900', '82600', '83500', '15489938', '1286360030996', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210426', '169500', '165000', '163500', '170000', '1892283', '316867132500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210427', '135000', '133000', '132500', '136000', '3394650', '455614278000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210427', '201000', '201000', '199000', '201500', '125444', '25150823500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210427', '118500', '121500', '117500', '122000', '1011527', '121059779000', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210427', '82900', '83200', '82500', '83300', '12941533', '1071381962500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210427', '167000', '170000', '166500', '170500', '1027920', '172192204000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210428', '130000', '134500', '130000', '135000', '5596760', '734187787360', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210428', '202500', '203000', '202000', '207500', '230236', '47160802000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210428', '126500', '120500', '116000', '126500', '1380617', '165606626525', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210428', '82100', '83200', '82100', '83200', '15596759', '1284554388615', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210428', '164000', '167500', '163000', '168500', '1095517', '180551614500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210429', '130000', '132000', '129000', '133000', '3738266', '487221837000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210429', '199000', '202500', '198500', '205500', '111342', '22293736000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210429', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210429', '81700', '82400', '81500', '82500', '20000973', '1638811445660', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210429', '162000', '165000', '160000', '165500', '1192074', '193278478500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210430', '128000', '130000', '126500', '130500', '3955947', '506549397500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210430', '198000', '198500', '198000', '200500', '128622', '25603672000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210430', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210430', '81500', '81900', '81500', '82100', '18673197', '1525090284512', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210430', '157500', '164000', '157000', '165500', '1601686', '256243079500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210503', '131500', '127500', '127000', '132500', '4085398', '534203731108', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210503', '202500', '198000', '197500', '205500', '151873', '30857758500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210503', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210503', '81700', '81000', '81000', '82400', '15710336', '1284767138340', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210503', '155000', '156500', '153000', '158500', '1410927', '219268007000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210504', '132000', '130500', '129000', '132000', '2547004', '333537768352', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210504', '199000', '203000', '195000', '204500', '136832', '27121287500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210504', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210504', '82600', '81900', '81800', '82600', '12532550', '1030147174860', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210504', '154500', '155000', '152500', '156500', '1063073', '163714331500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210506', '129000', '130000', '128000', '130500', '4211535', '543180636500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210506', '204000', '199500', '199000', '205000', '123856', '25154981500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210506', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210506', '82300', '81700', '81700', '82300', '17047511', '1397109294200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210506', '151500', '154000', '149500', '154500', '1825692', '276761761500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210507', '129500', '128000', '127000', '131000', '3450323', '445020959500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210507', '208000', '205500', '204500', '208500', '148040', '30637370500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210507', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210507', '81900', '81800', '81500', '82100', '14154882', '1158685043300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210507', '153000', '152500', '152000', '155000', '949811', '145521826500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210510', '130000', '131000', '128500', '131000', '3067077', '398135275000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210510', '207000', '207500', '206000', '209000', '132261', '27427473000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210510', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210510', '83200', '82300', '81800', '83500', '19385027', '1603729206300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210510', '153500', '154500', '153000', '155000', '1183390', '182094598500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210511', '123000', '127000', '122000', '127500', '9882491', '1225765601800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210511', '209500', '208000', '207000', '211000', '157235', '32878990000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210511', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210511', '81200', '82500', '81100', '82600', '28996680', '2365998053700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210511', '149000', '151500', '148500', '152500', '1632384', '243843815000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210512', '119500', '123000', '119000', '123500', '8272196', '998375160153', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210512', '211500', '212000', '206500', '215000', '225950', '47542318500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210512', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210512', '80000', '80800', '79800', '81200', '35812268', '2876601949600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210512', '147000', '148500', '145000', '150000', '1308616', '191930283000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210513', '117500', '116000', '115500', '118500', '6042025', '707490660500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210513', '215000', '211000', '210000', '220000', '349310', '75515823000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210513', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210513', '78500', '78900', '78400', '79600', '31490096', '2482903301914', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210513', '148000', '144500', '144000', '150000', '1541542', '227549337000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210514', '118500', '118500', '118000', '120000', '3227201', '383650636500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210514', '212500', '217500', '210500', '217500', '135934', '29050475000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210514', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210514', '80100', '79000', '78900', '80300', '16450920', '1313024424300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210514', '148500', '149000', '146500', '150000', '634322', '94223405500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210517', '117500', '120000', '117000', '120000', '3110127', '367395250748', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210517', '211500', '213500', '205500', '214000', '127004', '26563604000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210517', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210517', '79600', '80800', '79200', '80900', '17740855', '1414228804206', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210517', '147500', '151000', '146000', '151000', '553776', '81877974000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210518', '121000', '117500', '117500', '122000', '3470048', '418341013500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210518', '211000', '212000', '208000', '213000', '100889', '21150900500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210518', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210518', '79600', '79600', '79100', '80000', '17494407', '1393769049380', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210518', '150000', '148000', '147000', '150500', '551940', '82449824500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210520', '122500', '121000', '119500', '124000', '4600751', '562459757000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210520', '206000', '209000', '205500', '210500', '165956', '34361955500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210520', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210520', '79500', '79400', '79100', '79700', '16541828', '1314426651400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210520', '149500', '150000', '148000', '151500', '589695', '88179518500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210521', '122500', '124500', '121000', '125500', '4062695', '500739197500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210521', '207000', '206000', '205000', '209000', '147813', '30503212500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210521', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210521', '80100', '80100', '79800', '81500', '20961714', '1687345199300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210521', '149500', '151500', '149500', '152000', '686324', '103316357500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210524', '119500', '122000', '119000', '122500', '3188734', '382902166000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210524', '208000', '205500', '204500', '209000', '83618', '17327008000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210524', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210524', '79700', '80100', '79500', '80400', '13398666', '1069031356223', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210524', '149500', '149500', '147500', '150500', '537981', '80194976000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210525', '123000', '121500', '120500', '123000', '3258364', '397750334250', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210525', '208000', '206500', '206000', '209500', '119439', '24903830500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210525', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210525', '79900', '80000', '79800', '80400', '13628942', '1091584785700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210525', '153500', '151500', '150500', '154000', '894261', '136481523000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210526', '123000', '124000', '122000', '124500', '3015522', '371449108512', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210526', '209000', '207000', '206000', '209500', '82628', '17226561500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210526', '126500', '5', '5', '5', '5', '5', '172557131', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210526', '79800', '80400', '79700', '80500', '11984359', '959016261770', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210526', '152000', '153500', '151000', '155000', '698912', '106923249500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210527', '125500', '124500', '123000', '126000', '4539067', '565959868106', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210527', '209000', '209000', '207000', '215000', '341597', '71779699000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210527', '108500', '119500', '107500', '122500', '1781390', '197709186500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210527', '79600', '80000', '79100', '80000', '23198510', '1845463410840', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210527', '149500', '152000', '148000', '153500', '1163137', '174084282000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210528', '125000', '126500', '124000', '126500', '2332971', '292477328500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210528', '210000', '211000', '209000', '211500', '79600', '16750237000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210528', '107000', '109000', '107000', '112500', '768596', '83614189000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210528', '80100', '79800', '79400', '80400', '12360199', '988665902752', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210528', '151500', '150500', '149500', '153000', '612753', '93044182500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210531', '127000', '126000', '124000', '127000', '2448074', '307757152500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210531', '211500', '209500', '209000', '213500', '122559', '26001822000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210531', '101000', '106500', '100000', '106500', '1061671', '108241293500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210531', '80500', '80300', '79600', '80600', '13321324', '1065281026200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210531', '152000', '153000', '151000', '154500', '530955', '80790748500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210601', '128500', '127000', '126000', '129000', '2819179', '361144242000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210601', '212000', '211000', '209500', '214000', '85074', '18054229500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210601', '101000', '101000', '99700', '103000', '537456', '54378704000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210601', '80600', '80500', '80100', '81300', '14058401', '1135461759600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210601', '151500', '151500', '150000', '153000', '656695', '99493011000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210602', '126000', '128500', '125500', '129000', '2885654', '366063591000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210602', '214500', '210500', '210000', '215000', '88917', '19020187000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210602', '100500', '101000', '99800', '101500', '436935', '43830523800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210602', '80800', '80400', '80300', '81400', '16414644', '1327714187652', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210602', '151500', '152000', '151000', '153000', '448035', '68095968500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210603', '129000', '127000', '126500', '130000', '3353993', '431738907500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210603', '212000', '213000', '211000', '215500', '121048', '25737544000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210603', '102000', '99900', '99700', '102000', '337519', '34050745000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210603', '82800', '81300', '81100', '83000', '29546007', '2438122987382', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210603', '154500', '152000', '152000', '156000', '1156086', '178790789500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210604', '128500', '127500', '126500', '129000', '2555891', '326224466000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210604', '214500', '211000', '210500', '215500', '120351', '25712975500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210604', '99800', '100500', '99700', '101000', '415150', '41534867000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210604', '82200', '82700', '81500', '82700', '18112259', '1487791197200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210604', '153500', '153500', '152000', '154500', '558204', '85664015000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210607', '128500', '129500', '128000', '130000', '2562918', '330495929500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210607', '217000', '214500', '214000', '217500', '97654', '21120212000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210607', '99900', '100500', '99800', '101500', '504874', '50546564300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210607', '81900', '82700', '81600', '82800', '16496197', '1353520859143', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210607', '155000', '155000', '154000', '158000', '988186', '154098863500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210608', '127500', '127000', '125000', '127500', '4194955', '530430765200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210608', '219000', '217000', '216000', '220000', '109917', '23997616000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210608', '99400', '99900', '99200', '100000', '364665', '36319674700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210608', '81900', '82300', '81800', '82600', '12781226', '1049384778500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210608', '152500', '155000', '152500', '156000', '633240', '97476043000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210609', '122500', '125500', '122500', '126000', '6087592', '753815327750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210609', '219500', '219000', '218500', '221500', '136931', '30185150000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210609', '97900', '99600', '97900', '99900', '353173', '34752669500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210609', '81100', '81500', '81100', '82000', '14908823', '1214345795800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210609', '150500', '153000', '150500', '153500', '561497', '85056047500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210610', '123000', '122500', '120500', '124000', '4533076', '555657709500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210610', '215500', '220000', '212500', '220000', '216102', '46661635000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210610', '98100', '98000', '96500', '98800', '466952', '45577453600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210610', '81000', '81300', '80900', '81400', '17586995', '1426082429800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210610', '150000', '151000', '149000', '152000', '954307', '143369700500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210611', '128000', '124500', '124000', '128500', '4868608', '616364167677', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210611', '210500', '213000', '209000', '214500', '230083', '48410369500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210611', '98000', '98400', '97700', '99200', '327340', '32167947200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210611', '81000', '81200', '80700', '81700', '14087962', '1142077783332', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210611', '151500', '151000', '150500', '153000', '413298', '62555890000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210614', '127000', '127000', '125500', '127500', '2022730', '256163790000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210614', '209500', '209000', '207000', '210500', '105283', '21957492000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210614', '98100', '98000', '97500', '98800', '237584', '23323950100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210614', '80500', '80800', '80500', '80900', '10550078', '850453174124', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210614', '157500', '152000', '151500', '158500', '1741300', '272882683000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210615', '128500', '128500', '128000', '129500', '1975082', '254015860000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210615', '210000', '208500', '207500', '210500', '90377', '18923366000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210615', '99100', '98300', '98300', '99900', '272516', '27036792900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210615', '80900', '80900', '80600', '81200', '10075685', '814156162500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210615', '158500', '159000', '156500', '160500', '1021245', '161447206000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210616', '129500', '128000', '127000', '129500', '1893752', '243901543046', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210616', '212000', '209000', '208500', '215000', '87790', '18727037500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210616', '102000', '99200', '98600', '102000', '434819', '43905337100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210616', '81800', '81500', '81100', '81900', '14999855', '1223108169181', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210616', '157500', '157500', '156500', '159000', '674520', '106370554500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210617', '126500', '127000', '126000', '128000', '2123793', '268807728000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210617', '212000', '212000', '210500', '215000', '92138', '19557417500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210617', '104000', '101500', '100500', '104000', '372922', '38256638500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210617', '80900', '81100', '80700', '81300', '14007385', '1132293020100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210617', '154500', '156000', '153000', '156500', '1115514', '172087470000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210618', '124500', '127500', '124500', '127500', '2506112', '314308082000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210618', '211000', '211500', '209500', '213500', '98685', '20860635000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210618', '103500', '104000', '102500', '105000', '380755', '39535225500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210618', '80500', '81100', '80500', '81100', '14916721', '1202369230300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210618', '157000', '155000', '154500', '158000', '978143', '153014162500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210621', '122000', '121000', '120500', '123000', '3275288', '398859617500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210621', '210500', '211000', '208000', '213000', '97406', '20534875500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210621', '104000', '102500', '101000', '105000', '333781', '34601450000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210621', '79900', '79700', '79600', '80000', '16063340', '1282081340900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210621', '160500', '155000', '154500', '163500', '1975315', '317981262000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210622', '122000', '122500', '122000', '123500', '2179712', '266501577312', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210622', '211000', '211000', '210500', '213500', '81046', '17137493500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210622', '104500', '105000', '103000', '105500', '265848', '27642973500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210622', '80000', '80200', '79900', '80300', '11773365', '942656966106', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210622', '159000', '163000', '159000', '164500', '1111298', '178415341000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210623', '124000', '122500', '122000', '124500', '2703658', '333503792000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210623', '215000', '211500', '211000', '215500', '106352', '22800154000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210623', '104500', '104500', '102000', '105500', '311745', '32306558125', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210623', '80100', '80500', '79900', '80600', '13856548', '1110045011672', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210623', '157500', '159500', '155500', '162000', '1185360', '187006862500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210624', '126000', '124000', '123500', '126500', '2646407', '332400564000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210624', '216000', '216000', '214000', '217500', '107078', '23165588656', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210624', '105500', '103500', '103500', '105500', '241454', '25324322000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210624', '81200', '80400', '80100', '81400', '18771080', '1515729920909', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210624', '164000', '158500', '156500', '164500', '2156462', '350633433000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210625', '128500', '128000', '127500', '129000', '2531018', '324807842500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210625', '223000', '216000', '216000', '223500', '142077', '31386797500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210625', '106500', '105500', '105000', '107000', '209482', '22280121500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210625', '81600', '81500', '81200', '81900', '13481405', '1099148742353', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210625', '163500', '165500', '162000', '167000', '1132098', '185741809000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210628', '126000', '129000', '126000', '129500', '2402730', '305054504500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210628', '222500', '222000', '220500', '226000', '93600', '20899772500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210628', '104500', '106500', '103500', '106500', '282094', '29469224500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210628', '81900', '81700', '81600', '82000', '11578529', '946992165410', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210628', '163500', '165000', '160500', '166000', '946236', '154295922000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210629', '125000', '127500', '125000', '128000', '2211572', '278678507000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210629', '220000', '221000', '218500', '221000', '103611', '22715641000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210629', '102000', '104000', '102000', '104500', '1431484', '143824333000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210629', '81000', '81900', '80800', '82100', '15744317', '1277813841567', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210629', '161000', '164500', '160000', '165000', '903807', '146353962500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210630', '127500', '126500', '126000', '129500', '4346027', '557285330300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210630', '220500', '219500', '218000', '223500', '100164', '22107110000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210630', '102500', '102500', '102000', '104000', '325041', '33458370000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210630', '80700', '81100', '80700', '81400', '13288643', '1075902355151', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210630', '163500', '162500', '162000', '166000', '1118470', '183186558000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210701', '124500', '127500', '124000', '128000', '3336174', '417469163256', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210701', '218000', '220500', '217000', '222500', '87635', '19180505500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210701', '100500', '102000', '100000', '102500', '369063', '37226673500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210701', '80100', '80500', '80000', '80600', '13382882', '1073188213795', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210701', '162000', '164000', '160500', '164500', '779316', '126193004500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210702', '122500', '122500', '121500', '123500', '3983921', '488166299825', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210702', '223500', '217500', '217000', '224000', '92821', '20575966000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210702', '99800', '100500', '99700', '101500', '421835', '42210739400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210702', '80000', '80000', '79900', '80400', '8753097', '701206526029', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210702', '163500', '163500', '163000', '166500', '873575', '143677281000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210705', '123000', '123500', '122500', '124500', '1632551', '201788320500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210705', '219000', '223000', '218500', '223500', '75187', '16532251500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210705', '100000', '100500', '99900', '101500', '297041', '29880435100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210705', '80400', '80100', '80000', '80800', '8330969', '670345813400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210705', '167000', '164500', '163500', '167000', '1045443', '173184241500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210706', '125000', '124000', '123500', '126000', '2067135', '258715481000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210706', '219000', '220500', '219000', '221000', '51631', '11335265500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210706', '100000', '99900', '99800', '101500', '348549', '35047835300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210706', '81200', '80600', '80500', '81200', '12131651', '982536524900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210706', '170000', '168500', '166500', '172000', '1902339', '323060266500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210707', '123500', '125000', '122500', '125500', '2229140', '275048469500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210707', '215000', '216500', '213500', '217500', '90717', '19504402000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210707', '100000', '100000', '99400', '100500', '330938', '33102687000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210707', '80800', '81200', '80300', '81300', '15992202', '1289550531000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210707', '165000', '171000', '163500', '171000', '2371947', '394946057500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210708', '121500', '123500', '121000', '123500', '3165552', '385948367500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210708', '213000', '212500', '212500', '217500', '102801', '21999284500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210708', '98400', '100500', '97800', '100500', '479483', '47440338900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210708', '79900', '81100', '79900', '81200', '16660998', '1338741304400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210708', '160000', '165500', '160000', '165500', '1861927', '301013712000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210709', '119500', '120500', '118000', '120500', '4823577', '572864270909', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210709', '209500', '210000', '206500', '212000', '128029', '26700415500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210709', '97100', '97700', '96500', '99100', '392489', '38104835900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210709', '79400', '79600', '79000', '79800', '22720577', '1801821474504', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210709', '159000', '158000', '157000', '161500', '1408620', '223243978000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210712', '120000', '121000', '119500', '122000', '2477201', '298968546740', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210712', '213000', '210500', '210500', '214500', '45214', '9617232000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210712', '98000', '97400', '97400', '98200', '230253', '22530222900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210712', '79700', '79900', '79500', '80000', '9768108', '779142132784', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210712', '158500', '160500', '158000', '161000', '781657', '124493939000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210713', '123000', '121000', '121000', '123500', '2879072', '353148544500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210713', '218000', '213500', '213000', '219500', '73639', '16005045000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210713', '100000', '98600', '98600', '100500', '290228', '29002979400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210713', '79800', '80000', '79800', '80200', '9863450', '788804172500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210713', '163500', '158000', '157500', '163500', '1105815', '177757121500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210714', '123500', '122500', '121500', '124000', '2443087', '300251945500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210714', '218000', '217000', '216000', '218500', '53538', '11640717000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210714', '100500', '99600', '99000', '100500', '296015', '29599833800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210714', '79500', '79400', '79100', '79600', '11575636', '918601137185', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210714', '161000', '162000', '159000', '162000', '689838', '110779699000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210715', '123500', '123500', '122500', '124000', '1500981', '185185753500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210715', '220000', '218000', '217500', '221000', '81517', '17903062000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210715', '99400', '100500', '99000', '101000', '358809', '35752630500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210715', '80600', '79800', '79500', '80600', '13766279', '1102123440533', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210715', '161000', '161000', '159500', '162000', '648066', '104413288500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210716', '121500', '122000', '120500', '122500', '2905546', '352105296000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210716', '221500', '217000', '216500', '222000', '50891', '11200760000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210716', '98800', '98600', '98100', '99200', '294081', '28964005900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210716', '79800', '80100', '79500', '80100', '10859399', '865953289940', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210716', '160500', '159500', '159500', '161500', '523298', '83805397000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210719', '119000', '119000', '118500', '120000', '2066638', '246069384100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210719', '218000', '220000', '217500', '222500', '51984', '11392528000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210719', '97000', '97800', '97000', '98100', '307409', '29883261400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210719', '79000', '79100', '78800', '79200', '13155414', '1039019131200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210719', '157500', '159000', '157000', '159000', '598680', '94418785500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210720', '118500', '117500', '117500', '119500', '2070074', '245208899000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210720', '217000', '217500', '214000', '218000', '77084', '16633241000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210720', '97400', '95800', '95700', '97500', '223970', '21720739800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210720', '79000', '78500', '78400', '79000', '12456646', '979765694400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210720', '162500', '156500', '156000', '163500', '1343210', '214915074000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210721', '117000', '119500', '116500', '120000', '2864601', '336751082000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210721', '214500', '217500', '214000', '218500', '48811', '10527440000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210721', '96800', '97500', '96600', '97900', '179420', '17431516900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210721', '78500', '79000', '78500', '79100', '12355296', '971439241800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210721', '163000', '163000', '161500', '164500', '829143', '134858574500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210722', '119500', '118000', '118000', '120000', '1919233', '229044298500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210722', '220500', '216000', '215500', '220500', '77377', '16903677500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210722', '97800', '97000', '96800', '97900', '231929', '22569946800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210722', '79700', '79000', '78900', '79800', '12618790', '1003545619247', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210722', '164000', '163500', '162000', '164500', '806953', '132031042500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210723', '118500', '118500', '117500', '119000', '1747651', '206437390500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210723', '217500', '217500', '217000', '220500', '43625', '9522031500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210723', '97800', '97800', '97400', '98500', '207660', '20332704100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210723', '79300', '79700', '79200', '79900', '9098910', '723397885611', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210723', '166500', '164500', '164000', '167500', '1191816', '197984968000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210726', '117000', '119500', '117000', '120000', '1836657', '216665648500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210726', '214500', '218000', '214000', '218500', '36728', '7923428000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210726', '96500', '97700', '96500', '97800', '185934', '18029981900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210726', '78800', '79400', '78800', '79500', '10040975', '792954940200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210726', '163000', '167500', '163000', '168000', '849316', '140291201500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210727', '116000', '118000', '116000', '119000', '2916330', '341652828000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210727', '215000', '215500', '213500', '218000', '50756', '10914573000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210727', '96500', '96800', '96200', '97900', '200704', '19443320500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210727', '78500', '79200', '78500', '79400', '11427693', '900948843000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210727', '163000', '164500', '162000', '164500', '428806', '70067167000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210728', '114000', '115000', '112500', '115500', '6033084', '686796711695', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210728', '216000', '216000', '213500', '217000', '49504', '10664297500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210728', '95900', '96200', '95100', '96800', '220621', '21157215500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210728', '79200', '78300', '78100', '79200', '12743417', '1000757015703', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210728', '164000', '162500', '161000', '165500', '676883', '110698197500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210729', '114000', '115000', '113000', '115500', '3054699', '348087662000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210729', '216500', '214500', '214500', '219000', '56018', '12154616000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210729', '96400', '96000', '95900', '97000', '179785', '17342534800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210729', '79000', '78800', '78800', '79400', '14360453', '1134761032300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210729', '166500', '165500', '164000', '167000', '770794', '127669109000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210730', '112500', '114000', '112500', '114000', '2888566', '326825146865', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210730', '214500', '215000', '214500', '218000', '80627', '17382500000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210730', '94200', '95800', '94200', '96000', '417326', '39552816400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210730', '78500', '78900', '78500', '78900', '13823411', '1086488907610', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210730', '157500', '165000', '157500', '165500', '2178044', '348280424000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210802', '116000', '113500', '113000', '117000', '4276730', '492894553500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210802', '216500', '217000', '214000', '218500', '62951', '13641755500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210802', '94800', '94500', '92600', '94900', '283802', '26633106800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210802', '79300', '79200', '78700', '79500', '11739124', '929153637896', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210802', '156500', '157500', '155000', '158500', '809541', '126523900500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210803', '120000', '118000', '117000', '120500', '4396423', '525012153500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210803', '218500', '215500', '214000', '219000', '108444', '23469190000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210803', '95900', '95500', '94100', '95900', '260635', '24811572100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210803', '81400', '79400', '79300', '81400', '24339360', '1966480433000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210803', '156500', '157000', '155500', '158000', '716492', '112019059500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210804', '121000', '122000', '120500', '123000', '4162635', '506426204500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210804', '218000', '216500', '215500', '219000', '123038', '26785454000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210804', '95600', '95300', '94700', '95900', '242823', '23173402800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210804', '82900', '82200', '81800', '83100', '25642368', '2117643006850', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210804', '160000', '158000', '157000', '160500', '691765', '110058702500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210805', '120000', '121000', '118000', '121500', '3491584', '417741836000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210805', '218000', '216500', '216500', '219000', '76915', '16780954000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210805', '95500', '95400', '95200', '96900', '179356', '17200948500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210805', '82100', '83300', '82000', '83300', '18485469', '1526103630900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210805', '158000', '159500', '158000', '160000', '560669', '88859199000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210806', '118000', '119000', '117500', '119500', '2209875', '261328264000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210806', '218000', '217000', '216500', '220500', '110492', '24118136000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210806', '94800', '95500', '94800', '96100', '162449', '15463531900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210806', '81500', '81900', '81300', '82500', '13342623', '1090225883400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210806', '157000', '158500', '156500', '159000', '413308', '65112558500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210809', '116000', '117500', '116000', '118000', '2755724', '321254510500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210809', '216000', '216000', '214500', '216500', '74189', '15969598500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210809', '94800', '94200', '93500', '95200', '235229', '22194644900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210809', '81500', '81500', '80900', '82300', '15522581', '1267668377900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210809', '161000', '157500', '157000', '162000', '1152308', '184831867500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210810', '112500', '115000', '112000', '115500', '5420223', '611419233000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210810', '214000', '215500', '213000', '216500', '57081', '12232095146', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210810', '94400', '95000', '93900', '95300', '166997', '15769727500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210810', '80200', '82300', '80100', '82400', '20362639', '1643107615500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210810', '157500', '162000', '157000', '162000', '859174', '135740274500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210811', '105500', '109000', '105000', '110000', '13715267', '1465523476250', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210811', '216000', '213500', '213000', '217500', '91991', '19853066000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210811', '94700', '94100', '94000', '95500', '234818', '22234572400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210811', '78500', '79600', '78500', '79800', '30241137', '2389977254924', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210811', '156000', '157500', '155500', '158500', '536980', '84028596000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210812', '100500', '102000', '99800', '104000', '19150647', '1936648003175', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210812', '215500', '216000', '214500', '218500', '107035', '23121518500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210812', '94900', '95500', '94400', '96500', '368061', '35048168328', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210812', '77000', '77100', '76900', '78200', '42365223', '3276635421700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210812', '153000', '156000', '153000', '157500', '981866', '151236114500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210813', '101500', '99600', '98900', '101500', '11622957', '1163592210610', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210813', '219000', '218000', '217000', '224000', '215915', '47519850500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210813', '94000', '95100', '93300', '95600', '356132', '33544186200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210813', '74400', '75800', '74100', '76000', '61270643', '4575267536355', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210813', '150500', '153500', '148000', '154000', '916837', '137443022500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210817', '101500', '101000', '100500', '103500', '7851717', '799844118050', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210817', '229500', '221500', '221500', '230000', '344258', '78133405500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210817', '95300', '94700', '94200', '97300', '456696', '43687517600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210817', '74200', '74000', '74000', '75100', '30944847', '2304422906794', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210817', '151000', '150500', '150000', '153500', '779899', '117979446000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210818', '104000', '103000', '101500', '105500', '8047599', '833497118168', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210818', '227000', '230500', '226000', '232500', '186904', '42775186500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210818', '97600', '95900', '95500', '97700', '328522', '31841172600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210818', '73900', '73900', '73100', '74600', '29192631', '2156728137400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210818', '153500', '150500', '150000', '154000', '652995', '99585946500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210819', '102500', '103000', '101500', '105500', '6161038', '635489333500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210819', '225000', '227500', '222500', '229000', '150656', '33920802500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210819', '95100', '96300', '94500', '96600', '351197', '33555979000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210819', '73100', '73500', '73100', '74400', '22166298', '1630828844000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210819', '148000', '151500', '148000', '153000', '737444', '110568528000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210820', '102500', '104000', '102000', '104500', '4719139', '485591369000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210820', '220500', '224000', '218000', '224500', '113287', '24958009500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210820', '94300', '95600', '93500', '97000', '377965', '36062314155', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210820', '72700', '73500', '72500', '73900', '22364803', '1633795697700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210820', '146500', '148500', '146000', '150500', '802093', '118489286000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210823', '103000', '104500', '103000', '105000', '4515699', '470160531000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210823', '221500', '221000', '220500', '223000', '100890', '22352435000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210823', '89500', '93600', '88000', '93600', '537301', '48216012800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210823', '73300', '73300', '73000', '74000', '19384648', '1424674875510', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210823', '140500', '145500', '138000', '146000', '1780072', '250849394500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210824', '105000', '104500', '104000', '105500', '4454743', '467564469000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210824', '223500', '223500', '220500', '225000', '120974', '26945245500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210824', '93300', '90100', '89700', '93500', '277320', '25580608000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210824', '75600', '73900', '73900', '75700', '21016913', '1574547628640', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210824', '142000', '141000', '138500', '144500', '1375732', '194850900000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210825', '103500', '106000', '102500', '106000', '3194555', '331965325500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210825', '226500', '228500', '223500', '230500', '87532', '19843871000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210825', '93800', '92600', '92500', '94700', '209420', '19616897200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210825', '75700', '76200', '74900', '76600', '22319664', '1688297846500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210825', '142000', '142500', '139500', '144500', '806947', '114166855000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210826', '104000', '106000', '103500', '106500', '3694741', '387620188000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210826', '230500', '225000', '225000', '231000', '121163', '27736237500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210826', '92700', '93100', '92600', '94900', '157771', '14736842200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210826', '74600', '76100', '74600', '76200', '16671494', '1254628461500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210826', '141500', '142000', '140500', '145000', '806681', '115061843500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210827', '103500', '103500', '101000', '104500', '3507782', '360580367000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210827', '231500', '231000', '228500', '231500', '70594', '16283594500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210827', '93300', '93200', '92800', '94400', '173882', '16278754100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210827', '74300', '74300', '73800', '75000', '15172748', '1128028045800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210827', '140500', '141000', '139000', '141000', '593281', '83083845000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210830', '103500', '105000', '103500', '105500', '1815758', '188840484000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210830', '224500', '230000', '223500', '230500', '64134', '14466588000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210830', '94100', '93800', '93500', '94900', '104078', '9810549100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210830', '74600', '75400', '74200', '75500', '12686999', '945673383900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210830', '139500', '141500', '139000', '142000', '740133', '103469817000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210831', '106500', '103500', '102000', '106500', '4979276', '520811866500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210831', '226000', '222500', '221000', '227000', '126758', '28446054000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210831', '95300', '93100', '92500', '95300', '380558', '35940080200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210831', '76700', '74900', '74300', '76700', '24630370', '1864084402507', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210831', '142000', '139500', '138000', '142000', '1035617', '145111487500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210901', '108000', '106000', '104500', '108000', '4736183', '504301592000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210901', '227000', '223000', '222500', '227500', '51052', '11510525000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210901', '94300', '94200', '93700', '95300', '193825', '18237632600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210901', '76800', '76700', '75900', '77100', '16114775', '1233406384400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210901', '141000', '143000', '140000', '143000', '758432', '106970480500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210902', '106500', '108000', '106000', '108500', '2724565', '291366944000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210902', '228000', '225000', '225000', '230000', '81554', '18593784000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210902', '93200', '93100', '92800', '94700', '179671', '16768063600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210902', '76000', '76800', '75700', '76800', '15347486', '1168535621773', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210902', '139500', '140500', '139000', '141000', '667898', '93219510500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210903', '107000', '106500', '106000', '107500', '2513486', '268190741250', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210903', '229000', '227500', '227000', '229500', '51449', '11748869500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210903', '96400', '93100', '92900', '98200', '360938', '34574280900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210903', '76600', '76400', '76000', '76700', '12096419', '925331114200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210903', '153500', '142000', '140500', '154500', '4043334', '601973982000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210906', '106000', '106500', '105000', '107000', '1888595', '200100469000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210906', '227500', '227500', '225500', '229500', '52365', '11887931000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210906', '95300', '95100', '94600', '96300', '146255', '13959348700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210906', '77300', '76800', '76600', '77600', '12861180', '993041466900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210906', '148000', '151000', '146500', '151500', '1611682', '239644223500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210907', '104500', '105500', '104000', '106000', '2547667', '266814694452', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210907', '224500', '226000', '222000', '226000', '91331', '20467813573', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210907', '94100', '94700', '93600', '94900', '137656', '12938213200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210907', '76100', '77100', '75900', '77100', '13239401', '1008596148650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210907', '147500', '149000', '147500', '150500', '757429', '112402879000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210908', '106000', '104000', '103500', '107500', '2891267', '306049902100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210908', '228000', '222500', '222500', '229500', '89464', '20342262500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210908', '95700', '94300', '94300', '96200', '237534', '22680362300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210908', '76300', '76000', '75600', '76400', '11798147', '897864198600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210908', '144000', '146500', '143000', '147000', '1296091', '186836745500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210909', '103000', '105000', '103000', '106000', '3233011', '335548149250', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210909', '223000', '226500', '223000', '228500', '136121', '30536649500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210909', '93500', '94600', '93500', '95800', '201325', '18972988500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210909', '75300', '76400', '75000', '76600', '17600770', '1329972274100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210909', '141500', '144000', '141500', '145500', '955728', '136272586000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210910', '105000', '103500', '103000', '105500', '1999369', '208765953000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210910', '228000', '225500', '224500', '229500', '75294', '17161407500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210910', '94400', '93600', '93500', '95300', '139153', '13136806800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210910', '75300', '75300', '74800', '75600', '10103212', '760038461600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210910', '146500', '143000', '143000', '151000', '1851877', '273634545500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210913', '106500', '105000', '104000', '107000', '1923344', '203945798000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210913', '229500', '228000', '225000', '230000', '68889', '15703833000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210913', '94800', '94300', '93400', '95600', '144676', '13696074300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210913', '76300', '75200', '75100', '76300', '11397775', '865368373800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210913', '143000', '144000', '141500', '144500', '808784', '115463850500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210914', '107500', '107500', '106500', '108500', '2463248', '265228954000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210914', '233500', '230500', '230500', '237000', '140185', '32956356000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210914', '96600', '96200', '95500', '96900', '215211', '20767254600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210914', '76600', '77100', '76600', '77700', '18167057', '1404205788220', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210914', '142500', '143500', '142500', '145000', '573492', '82347090000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210915', '107500', '107500', '105500', '107500', '2933797', '313065621522', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210915', '232000', '232500', '232000', '236500', '96718', '22587621500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210915', '95700', '94600', '94600', '96700', '195045', '18680119900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210915', '77000', '77400', '76400', '77400', '12829128', '987846688544', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210915', '142000', '143500', '140500', '143500', '763228', '108553982500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210916', '104000', '107000', '104000', '107500', '3602821', '377545296500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210916', '227000', '232000', '221500', '233500', '114595', '26027149000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210916', '94800', '95700', '94400', '96500', '151108', '14332890500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210916', '76100', '77300', '76100', '77400', '13067622', '1000180664750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210916', '141000', '142500', '140000', '143500', '639525', '90068100000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210917', '107000', '104500', '104000', '107500', '3386517', '359100724676', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210917', '227500', '225500', '224500', '227500', '101649', '23029311000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210917', '94600', '93500', '93100', '94700', '206462', '19428014700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210917', '77200', '76300', '75900', '77200', '16289502', '1250677861383', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210917', '139500', '140500', '139000', '141000', '799115', '111528630000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210923', '105500', '105500', '105000', '107000', '2493313', '264307905000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210923', '227500', '223500', '223000', '228000', '99542', '22491580500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210923', '95300', '94000', '93700', '95700', '242646', '22992539100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210923', '77400', '77500', '76800', '77600', '17055590', '1318209157168', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210923', '140500', '138500', '136500', '141000', '1090853', '151462657000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210924', '104000', '106000', '104000', '106500', '2236954', '234364730900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210924', '228500', '228000', '226500', '230500', '57009', '13042121500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210924', '95200', '95300', '94800', '96000', '159950', '15234595100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210924', '77300', '77600', '77100', '77700', '12247274', '947458981757', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210924', '139500', '142000', '139000', '142500', '865310', '120964141400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210927', '104500', '104000', '103500', '105500', '1839358', '192456989015', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210927', '230000', '227000', '227000', '233500', '71111', '16396108000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210927', '95700', '94600', '94400', '96100', '131340', '12566285200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210927', '77700', '77300', '77000', '77700', '11699798', '906520162508', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210927', '138500', '139000', '138000', '139500', '526452', '73088441000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210928', '103500', '105000', '103000', '105500', '2951945', '306328082384', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210928', '233000', '228500', '228000', '235500', '116282', '27066148000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210928', '93800', '95300', '93800', '95700', '229044', '21619769200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210928', '76300', '77700', '76200', '77800', '15406382', '1182788461030', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210928', '132500', '138000', '132500', '138500', '1667863', '224228817337', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210929', '100000', '101000', '99700', '102000', '6353977', '637439976900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210929', '231500', '233000', '230500', '237000', '105976', '24686850500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210929', '90300', '93500', '90000', '93700', '335314', '30619583500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210929', '74100', '74800', '73800', '75300', '23992458', '1783148126490', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210929', '129500', '129000', '128000', '131000', '1435656', '185365100000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210930', '103000', '99900', '99600', '103500', '3910557', '398749751000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210930', '235000', '230500', '230500', '236000', '109787', '25735934886', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210930', '93000', '90400', '90000', '93600', '218312', '20155773400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210930', '74100', '74300', '73700', '74800', '19919361', '1478002111149', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20210930', '127500', '128500', '125000', '129000', '1505941', '191639288500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211001', '100000', '102000', '100000', '102500', '2681124', '270093983500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211001', '237500', '233000', '230500', '237500', '97462', '22942921500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211001', '93000', '92900', '92000', '93500', '233277', '21667640000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211001', '73200', '73900', '72900', '74000', '15803395', '1157440977580', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211001', '125500', '125500', '124500', '127500', '1099392', '137967773000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211005', '97900', '98900', '97200', '99500', '3244145', '317776292500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211005', '240000', '234000', '234000', '244500', '157349', '37861773013', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211005', '93100', '90200', '90200', '93800', '325916', '30221138604', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211005', '72200', '73000', '71400', '73000', '24013921', '1729663019790', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211005', '123500', '123000', '121000', '125500', '1158497', '142445930500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211006', '96500', '98400', '95800', '98700', '2816951', '272987613500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211006', '243000', '242000', '240500', '248500', '188880', '46474592500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211006', '89900', '93000', '89900', '93500', '285447', '26072169400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211006', '71300', '72600', '71200', '72800', '18956962', '1361134080400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211006', '120000', '125500', '119000', '126000', '1599552', '193827735000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211007', '95700', '96300', '95000', '96800', '3834957', '367445240600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211007', '242000', '247000', '239500', '247500', '86656', '21044296000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211007', '92300', '91400', '91100', '93300', '171975', '15896653000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211007', '71600', '71600', '71300', '72100', '13683532', '981528388448', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211007', '124000', '121000', '120000', '125000', '907601', '111452994000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211008', '94000', '96200', '93500', '96300', '4098832', '386100145500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211008', '241000', '241000', '237500', '242000', '59369', '14220323000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211008', '91900', '90300', '90100', '92900', '170757', '15711557700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211008', '71500', '72300', '71500', '72400', '14043287', '1009009438500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211008', '120000', '125000', '119000', '125500', '1407749', '170704108500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211012', '91500', '92400', '90800', '92900', '4728215', '434375175502', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211012', '239500', '240000', '237000', '242500', '103176', '24691402488', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211012', '92700', '93400', '90900', '94000', '230482', '21245410246', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211012', '69000', '70700', '68700', '70900', '31001484', '2151234190950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211012', '124000', '121000', '119000', '125500', '1793542', '218768612500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211013', '92000', '90900', '90500', '93500', '3045438', '281114919200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211013', '239000', '239500', '237000', '240500', '70642', '16844887500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211013', '93400', '93000', '92400', '93700', '129368', '12061362900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211013', '68800', '68700', '68300', '69600', '24172015', '1670335641584', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211013', '122000', '122500', '119500', '123000', '943291', '114188911500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211014', '93800', '92400', '92100', '94500', '2414639', '225994882500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211014', '240000', '240000', '238000', '242000', '87304', '20938475000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211014', '95400', '94000', '93600', '95400', '194255', '18424520300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211014', '69400', '69000', '68800', '69800', '19520641', '1352533826700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211014', '123500', '123500', '122500', '125500', '950533', '117700471000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211015', '98400', '96000', '95700', '98500', '4229748', '410989595150', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211015', '242000', '239500', '239000', '244000', '71648', '17324188500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211015', '95600', '94100', '94100', '95900', '148706', '14169458200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211015', '70100', '70200', '70000', '71000', '18051612', '1270264426455', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211015', '126500', '125000', '125000', '127000', '743492', '93768834000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211018', '97100', '98300', '96700', '98300', '2111399', '205541402600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211018', '241500', '241000', '238000', '243000', '129943', '31253819250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211018', '95800', '95100', '94400', '96000', '138311', '13185892700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211018', '70200', '70200', '69200', '70300', '13486391', '942009349900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211018', '123500', '127500', '123500', '127500', '716291', '89254466500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211019', '97700', '98600', '97100', '98600', '1400175', '136864553900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211019', '245000', '244000', '242500', '247000', '54557', '13350342500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211019', '96100', '96600', '95500', '97200', '90945', '8755013900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211019', '70600', '70800', '70400', '71000', '9507991', '671983122600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211019', '126500', '124500', '123500', '127000', '600501', '75169652704', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211020', '97900', '98200', '97200', '98600', '2010529', '197390236450', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211020', '247000', '245000', '243500', '247000', '51512', '12654476000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211020', '95200', '96900', '95100', '97400', '132214', '12673219100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211020', '70300', '70700', '70200', '71000', '10151638', '715666115800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211020', '125000', '126500', '125000', '127500', '579159', '73032664000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211021', '96300', '97300', '96100', '98300', '2152221', '209285344950', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211021', '247000', '245500', '244500', '247500', '85470', '21067941000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211021', '94700', '94400', '94100', '95900', '157323', '14929537100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211021', '70200', '70300', '70000', '70600', '10891094', '766060174200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211021', '125500', '126000', '125000', '127500', '571147', '72044981500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211022', '98500', '95500', '95500', '99200', '1962833', '192029886100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211022', '245000', '245500', '243500', '247000', '35365', '8675789000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211022', '94600', '93600', '92800', '95000', '85627', '8047942800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211022', '70400', '70000', '70000', '70700', '8395448', '590534144700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211022', '125000', '125000', '123000', '126000', '360096', '44813350000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211025', '100000', '99500', '98300', '101500', '2950459', '296226789100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211025', '248000', '243000', '242000', '249000', '43491', '10728553000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211025', '95000', '93700', '93700', '95700', '139775', '13271640600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211025', '70200', '69900', '69500', '70600', '10029621', '702792157900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211025', '124500', '123500', '122500', '126000', '554539', '68970389000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211026', '102000', '101500', '101000', '103500', '3458645', '354502370500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211026', '247500', '249000', '246000', '249500', '41562', '10269633000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211026', '94500', '95800', '94200', '95800', '86588', '8200524600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211026', '71100', '70600', '70400', '71500', '10528252', '746412840225', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211026', '125500', '125000', '124500', '126000', '706443', '88552138500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211027', '101500', '103000', '101500', '104000', '2859255', '293196594000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211027', '251500', '249000', '247000', '253000', '73257', '18382461500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211027', '94700', '94600', '93300', '94900', '153586', '14479044900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211027', '70100', '71000', '70000', '71000', '10295316', '723286321636', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211027', '122000', '125500', '121500', '126000', '912547', '111966963500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211028', '106500', '102000', '101500', '107500', '6329703', '669797071750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211028', '236000', '251500', '235000', '252000', '142693', '34185075500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211028', '91500', '94700', '91500', '94900', '263101', '24301218600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211028', '70700', '69500', '69500', '72200', '20644902', '1459533451800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211028', '122000', '122000', '121000', '124000', '842870', '103404573000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211029', '103000', '107000', '103000', '108500', '4007223', '419885767028', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211029', '231000', '235500', '230000', '241000', '132742', '30938007500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211029', '91200', '91600', '90300', '92400', '250274', '22878478000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211029', '69800', '71200', '69700', '71600', '17016151', '1196597498200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211029', '120500', '124000', '119500', '129000', '2301006', '284201657500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211101', '106500', '103500', '102500', '107000', '3118661', '329822915500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211101', '235000', '232000', '231000', '235500', '82135', '19185826500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211101', '92500', '92000', '91200', '93100', '251976', '23308359800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211101', '69900', '70200', '69900', '70600', '11503729', '807716414830', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211101', '120500', '121000', '119500', '122000', '761704', '91802232500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211102', '107500', '107000', '106500', '108500', '2892292', '311461835500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211102', '235000', '236500', '233500', '238000', '69138', '16335456500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211102', '93100', '92400', '92200', '93600', '160430', '14957483000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211102', '71500', '70800', '70700', '72200', '16812570', '1204672538100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211102', '123000', '121000', '120500', '124500', '915388', '112705392500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211103', '105500', '108500', '104500', '109000', '3116506', '332050857750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211103', '233500', '235500', '230500', '239000', '63597', '14840609000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211103', '92400', '92400', '92000', '93300', '206053', '19054508700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211103', '70400', '71700', '70100', '71700', '12770428', '901884731944', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211103', '122000', '123500', '121000', '124000', '503633', '61644401000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211104', '106000', '107000', '105500', '108000', '2059242', '220087063000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211104', '229000', '233000', '227000', '236000', '86430', '19911663000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211104', '93100', '92600', '92600', '94300', '264248', '24734434000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211104', '70600', '71200', '70500', '71600', '11818987', '839689026002', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211104', '122500', '124000', '122000', '126000', '769589', '95384919500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211105', '107000', '108000', '105500', '108500', '2523345', '270381389476', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211105', '225000', '230500', '223500', '231000', '113523', '25603093000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211105', '93500', '93100', '92200', '94100', '176213', '16416989000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211105', '70200', '71600', '70200', '71600', '12667743', '893824641500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211105', '123000', '123500', '121500', '124500', '470484', '57755294000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211108', '107500', '107000', '104000', '108000', '2212348', '234661886288', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211108', '227500', '223500', '220500', '230000', '66415', '14951217000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211108', '93600', '93100', '92500', '94500', '145996', '13638604800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211108', '70600', '70400', '69800', '70600', '11121981', '780514063641', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211108', '122500', '123000', '120500', '123500', '478858', '58294398500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211109', '109000', '108000', '107500', '110000', '3440686', '373692083000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211109', '223000', '227500', '221000', '229000', '101001', '22589807000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211109', '94000', '93700', '93000', '95100', '122675', '11539424800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211109', '70500', '70300', '70100', '71000', '11159589', '785532089300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211109', '123000', '123000', '122000', '125000', '497844', '61224313000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211110', '108500', '108500', '107500', '109500', '2361295', '256342441500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211110', '223500', '221000', '220500', '226000', '63997', '14256670000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211110', '91200', '92500', '90700', '93300', '188514', '17265498500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211110', '70200', '70300', '70200', '70900', '9422009', '663952838500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211110', '119500', '122000', '119000', '123000', '707984', '85182178000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211111', '107500', '107500', '105500', '108000', '2731498', '292597172000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211111', '221000', '222000', '219500', '224000', '116445', '25762191500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211111', '89200', '90100', '89000', '90600', '211294', '18878899200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211111', '69900', '69900', '69600', '70000', '11489122', '802183238200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211111', '117500', '119000', '115500', '119500', '1137785', '133111824000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211112', '106500', '109000', '105500', '109500', '1786165', '191349195500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211112', '225500', '224000', '221000', '226000', '95324', '21381248250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211112', '90000', '89200', '88800', '90500', '153161', '13772956900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211112', '70600', '70200', '69900', '70900', '10087450', '711487813500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211112', '122000', '118000', '118000', '122000', '734937', '88942518500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211115', '111000', '108500', '108000', '111500', '4701568', '520375013000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211115', '229500', '224500', '223000', '230000', '61918', '14007551500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211115', '90300', '90000', '89700', '90500', '112796', '10165793700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211115', '71400', '71700', '70900', '71900', '12420710', '888880719596', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211115', '124500', '122500', '122500', '125000', '521720', '64696058000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211116', '112000', '111000', '109000', '113000', '3767311', '420122536000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211116', '229000', '230000', '224000', '230000', '88060', '20017848000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211116', '89700', '89200', '88500', '90500', '188510', '16880123600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211116', '71300', '71500', '71300', '72000', '10919239', '782118934000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211116', '124000', '124500', '123000', '125500', '565313', '70138007500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211117', '110500', '113000', '110000', '113000', '3062491', '338946492000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211117', '220000', '225500', '217000', '226500', '153575', '33778256500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211117', '88100', '89100', '88000', '90000', '281523', '24901598100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211117', '70700', '71300', '70600', '71600', '11027606', '782835405900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211117', '123000', '124500', '122000', '125000', '524897', '64644471500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211118', '110000', '110000', '109000', '111000', '1928891', '212341653500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211118', '218500', '217000', '212000', '218500', '102507', '22107236000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211118', '84600', '87500', '84600', '87800', '276821', '23783087400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211118', '70200', '70700', '70200', '71000', '10144957', '715155784712', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211118', '122500', '123500', '122000', '124000', '480336', '59019259000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211119', '111500', '110000', '110000', '112500', '2324668', '258662968500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211119', '218000', '215000', '213500', '219000', '108622', '23576204500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211119', '86300', '85300', '85000', '87300', '373030', '32123017800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211119', '71200', '70400', '70100', '71400', '11954728', '844715736500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211119', '133500', '128000', '127500', '137500', '4928339', '651550816500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211122', '119500', '116500', '116000', '121000', '9786492', '1166463215825', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211122', '216500', '213500', '212000', '219500', '133835', '28881799000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211122', '87800', '85500', '85300', '88200', '188598', '16468942100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211122', '74900', '73300', '73000', '75200', '27506623', '2047227974600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211122', '134000', '133500', '131500', '136000', '1670033', '223533269500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211123', '119000', '119500', '117500', '121000', '4847270', '578483844000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211123', '214000', '214000', '213500', '219000', '127144', '27324569500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211123', '85600', '85900', '85500', '87100', '229089', '19664178000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211123', '75300', '76000', '74500', '76000', '22029195', '1656722300700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211123', '128000', '132500', '127000', '133000', '1329955', '171538521000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211124', '119500', '120500', '118000', '122500', '4001111', '479194804000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211124', '217000', '214500', '214500', '219000', '99046', '21437776000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211124', '86500', '85500', '85500', '87000', '208098', '17944018100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211124', '74800', '76000', '74100', '76200', '15652305', '1174195612600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211124', '128500', '127000', '126000', '130000', '988988', '126450454000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211125', '117500', '120500', '117000', '121000', '3339835', '395199192000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211125', '212500', '215500', '212500', '216000', '68599', '14645537500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211125', '84600', '85700', '84500', '86200', '142795', '12130023400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211125', '73700', '75100', '73600', '75100', '12559258', '929571252060', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211125', '125500', '128500', '125000', '129000', '675145', '85224782000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211126', '115500', '116500', '113000', '118500', '4337936', '502130486360', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211126', '206500', '211000', '206000', '213000', '87358', '18189842500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211126', '82000', '84200', '81500', '84500', '310591', '25610702400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211126', '72300', '73500', '72000', '74100', '13002242', '944377957159', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211126', '122000', '125500', '121500', '126500', '872482', '107385674000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211129', '116000', '113000', '113000', '118500', '4412863', '514357620020', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211129', '208000', '206500', '205000', '211500', '107804', '22440987500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211129', '80800', '81900', '80500', '82400', '252967', '20552081500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211129', '72300', '71700', '71400', '73000', '16682559', '1206605509200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211129', '119500', '118000', '118000', '122000', '933062', '112161190500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211130', '114000', '118000', '112500', '119000', '7449608', '861327494786', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211130', '202000', '205500', '201000', '210500', '202941', '41555392500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211130', '78400', '81000', '77000', '81100', '762537', '60017284500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211130', '71300', '73200', '70500', '73900', '30364841', '2183677859000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211130', '115500', '120500', '115000', '122000', '1809765', '211593511000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211201', '116500', '114500', '112000', '117500', '4214135', '484482748500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211201', '203000', '203500', '200500', '207000', '103343', '21003847500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211201', '78400', '78400', '76800', '79700', '292591', '23049343000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211201', '74400', '72000', '71600', '74800', '21954856', '1610884710200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211201', '120000', '116500', '115500', '120000', '851165', '100531388500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211202', '120000', '115500', '115000', '120500', '6980518', '831750593692', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211202', '203500', '200000', '197000', '204000', '144612', '29073205000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211202', '81500', '77900', '77400', '81900', '294959', '23643767700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211202', '75800', '73900', '73800', '75800', '23652940', '1778784775812', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211202', '122000', '118000', '118000', '122000', '725845', '87344555500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211203', '118000', '119000', '115500', '119500', '4567843', '537427299761', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211203', '209000', '204000', '203000', '211000', '102951', '21409322500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211203', '82000', '80500', '80000', '82700', '326838', '26697455600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211203', '75600', '75600', '74100', '76000', '18330240', '1375860953642', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211203', '122000', '122000', '119000', '123000', '780951', '94645135000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211206', '118500', '116000', '115500', '119000', '4318893', '507851262000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211206', '208500', '208500', '205500', '210500', '46782', '9729773500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211206', '81900', '81900', '80400', '82400', '197543', '16094118400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211206', '76300', '75100', '74900', '76700', '16391250', '1245309081800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211206', '124000', '121500', '120500', '125000', '819472', '100895360000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211207', '121500', '119000', '118000', '122500', '5112025', '617725173500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211207', '211500', '208500', '206500', '211500', '59760', '12503754500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211207', '81900', '82000', '80500', '82400', '332278', '27072608800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211207', '77400', '76100', '75600', '77700', '19232453', '1477888023100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211207', '125500', '124000', '121500', '126000', '720765', '89259311000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211208', '120000', '124000', '119500', '125000', '6168137', '752879680500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211208', '209500', '211500', '208500', '213500', '84748', '17892491500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211208', '83600', '81300', '81300', '84300', '405832', '33787062200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211208', '77400', '78300', '77100', '78600', '21558340', '1662978972800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211208', '123500', '127500', '122500', '128000', '1043122', '130290917500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211209', '123500', '120500', '119000', '123500', '5631833', '689409143200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211209', '210500', '210000', '209000', '212500', '100901', '21250453500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211209', '84000', '83600', '83600', '84900', '437588', '36816869400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211209', '78200', '77400', '77000', '78200', '21604528', '1681184112100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211209', '123000', '122500', '122000', '125000', '1151051', '141821136000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211210', '120500', '120500', '119500', '121500', '2512642', '302355110093', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211210', '211000', '210500', '210000', '212500', '46065', '9746249000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211210', '86600', '84000', '83700', '86900', '279700', '24013404700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211210', '76900', '77400', '76800', '77600', '9155219', '705966272740', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211210', '126000', '122000', '121500', '126000', '671405', '83493063500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211213', '121500', '121000', '121000', '124000', '3329176', '408531347500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211213', '210500', '211500', '210000', '214500', '82372', '17465965277', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211213', '86900', '86700', '86300', '89000', '325203', '28492590500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211213', '76800', '77200', '76500', '78300', '15038750', '1163285000550', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211213', '134000', '129500', '129000', '135500', '2612253', '348564239500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211214', '121000', '120500', '120000', '123000', '2201003', '266372613500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211214', '210000', '209000', '209000', '213000', '74575', '15704087000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211214', '80500', '81100', '80000', '81800', '9453170', '758436954200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211214', '77000', '76500', '76200', '77200', '10976660', '841446671988', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211214', '128500', '132500', '128000', '133500', '1506380', '195772494000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211215', '123500', '120000', '120000', '123500', '2681332', '327764280000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211215', '209500', '209000', '208000', '211500', '99173', '20807614500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211215', '81400', '81400', '81100', '82300', '1088846', '88848358000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211215', '77600', '76400', '76300', '77600', '9584939', '738591816100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211215', '129500', '128500', '127000', '130500', '855372', '110143076500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211216', '124000', '125000', '122500', '125500', '3869086', '479279591000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211216', '211500', '209500', '209500', '212000', '59541', '12557906000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211216', '81600', '81800', '80800', '82100', '642720', '52248656000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211216', '77800', '78500', '77400', '78500', '11996128', '934244160164', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211216', '130000', '131500', '129000', '132500', '705254', '91907086000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211217', '122000', '120500', '120500', '123000', '3850444', '468341839000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211217', '215500', '212500', '211500', '216000', '212781', '45748616500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211217', '82300', '81200', '80900', '82900', '802264', '65969850400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211217', '78000', '76800', '76800', '78000', '13108479', '1016846497195', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211217', '129500', '128000', '127500', '131500', '944383', '122167136500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211220', '120500', '121500', '120500', '123500', '2846815', '346125412636', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211220', '214000', '214000', '212000', '216000', '80801', '17305782000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211220', '81000', '82200', '80900', '82800', '631202', '51419229100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211220', '77100', '77600', '76800', '77800', '11264375', '869972000855', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211220', '125500', '128500', '125500', '129000', '864094', '109518883000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211221', '124500', '124000', '122500', '124500', '3678590', '456218755750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211221', '214000', '215500', '214000', '216000', '69290', '14891558000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211221', '81400', '81600', '80400', '81600', '343008', '27816995000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211221', '78100', '77900', '77500', '78300', '14245298', '1110658660990', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211221', '130500', '127000', '126500', '131000', '993693', '128587175500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211222', '127000', '127500', '126000', '128500', '3817689', '485765542000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211222', '214500', '214000', '213000', '215000', '43956', '9398808000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211222', '81400', '81600', '81000', '82000', '281713', '22931566700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211222', '79400', '78900', '78800', '79400', '17105892', '1354311131000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211222', '129500', '132000', '129000', '132500', '703187', '91813410500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211223', '127500', '129000', '126500', '129000', '2398358', '305473862500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211223', '216000', '214000', '213500', '216500', '60313', '12975639000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211223', '82400', '81500', '81200', '82700', '457129', '37550480200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211223', '79900', '79800', '79300', '80000', '13577498', '1083055928000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211223', '137000', '130500', '128500', '139000', '2564334', '348433660000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211224', '128000', '129000', '128000', '130000', '2462683', '317105459500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211224', '216000', '217000', '215000', '218500', '76551', '16576872000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211224', '82500', '82300', '81600', '82900', '292828', '24065326600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211224', '80500', '80200', '80200', '80800', '12086380', '973661791400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211224', '136500', '137000', '134000', '138000', '1170212', '159385061500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211227', '126000', '128500', '126000', '129000', '2684135', '341063850000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211227', '218500', '216000', '216000', '219000', '103939', '22697025000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211227', '82600', '82500', '82200', '82900', '243474', '20079313100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211227', '80200', '80600', '79800', '80600', '10783368', '864327041000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211227', '138000', '136500', '135500', '140000', '958151', '132569845000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211228', '127500', '126500', '124500', '128000', '4086063', '514250426500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211228', '222000', '219000', '216500', '222000', '164801', '36229457500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211228', '83700', '82800', '82300', '83800', '373939', '31104503500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211228', '80300', '80200', '79700', '80400', '18226325', '1458198874200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211228', '138000', '139000', '137000', '139500', '1186045', '164009558500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211229', '127000', '127500', '125500', '128500', '3832154', '486662008000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211229', '205500', '211000', '205500', '212500', '181975', '37746549000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211229', '81800', '82300', '81500', '82400', '399291', '32689646300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211229', '78800', '80200', '78500', '80200', '19794795', '1569040228400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211229', '140500', '138500', '138000', '141500', '1104635', '154574832000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211230', '131000', '131000', '130000', '133500', '5172987', '679015510000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211230', '202000', '205500', '201500', '205500', '72848', '14791231500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211230', '80900', '81400', '80700', '81800', '357548', '29003502100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211230', '78300', '78900', '78100', '79500', '14236700', '1120743115800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20211230', '138000', '140000', '138000', '140500', '703821', '97642238000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220103', '128500', '132000', '128000', '132500', '3782213', '490940041000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220103', '204500', '201500', '200000', '205000', '75926', '15391161500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220103', '81000', '80900', '80500', '81300', '256607', '20741211000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220103', '78600', '79400', '78200', '79800', '13502112', '1066006837750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220103', '139500', '139500', '138000', '140500', '534878', '74360982000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220104', '128500', '129500', '127500', '130000', '3622369', '466570764500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220104', '207000', '203000', '201000', '208000', '112514', '22982093000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220104', '82400', '81000', '80600', '82500', '363062', '29745154900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220104', '78700', '78800', '78300', '79200', '12427416', '977990613000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220104', '142000', '143000', '140000', '145000', '1419997', '202237298500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220105', '125500', '129000', '121500', '129000', '7414954', '921467697500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220105', '210500', '206000', '205500', '215000', '188347', '39907974500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220105', '81400', '81300', '80800', '82100', '429095', '34941581800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220105', '77400', '78800', '76400', '79000', '25470640', '1967841509800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220105', '138500', '142000', '137500', '142000', '965541', '134145089500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220106', '125000', '123500', '123000', '127000', '3725569', '466796608500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220106', '212000', '212500', '208000', '213500', '97863', '20681691000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220106', '80800', '80500', '80300', '81400', '570752', '46088925820', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220106', '76900', '76700', '76600', '77600', '12931954', '996378432570', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220106', '135000', '136000', '134500', '139000', '1038777', '141500218500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220107', '127000', '127000', '126500', '129000', '3270119', '417803212500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220107', '214500', '209500', '208000', '215000', '107178', '22778458500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220107', '81600', '80500', '80300', '82000', '593241', '48323815519', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220107', '78300', '78100', '77400', '78400', '15163757', '1184236552700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220107', '137500', '136500', '135000', '138000', '808243', '110543465500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220110', '124500', '126500', '123000', '127000', '3449197', '428295041000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220110', '222500', '213500', '213500', '223500', '173843', '38400116500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220110', '80800', '81400', '80300', '81900', '402694', '32511027768', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220110', '78000', '78100', '77100', '78100', '9947422', '772740467800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220110', '130000', '135500', '129000', '136000', '1784965', '232962388000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220111', '128000', '125500', '124500', '128500', '3958787', '502323396739', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220111', '214000', '218500', '213500', '222000', '111736', '24135943000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220111', '79500', '80300', '78800', '80800', '409770', '32584099500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220111', '78900', '78400', '78000', '79000', '13221123', '1038834579600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220111', '130500', '129500', '127500', '131500', '985952', '127887232500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220112', '128500', '129500', '126500', '130000', '3552174', '455036905500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220112', '218000', '214500', '214000', '220000', '90565', '19709870000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220112', '82500', '79900', '79600', '82500', '404563', '33005865800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220112', '78900', '79500', '78600', '79600', '11000502', '868910854000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220112', '137000', '131500', '131000', '138500', '1757579', '238784222000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220113', '129500', '128500', '128000', '130000', '4155984', '536433810500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220113', '216500', '218000', '215000', '220000', '81859', '17744060500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220113', '82600', '82900', '82300', '84500', '445294', '37090549000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220113', '77900', '79300', '77900', '79300', '13889401', '1088598373464', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220113', '145500', '139000', '139000', '150000', '5019347', '732199995000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220114', '128500', '128500', '126000', '129000', '3769648', '479418370000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220114', '217500', '216500', '212500', '218500', '80862', '17438467000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220114', '82000', '82500', '81500', '83400', '256682', '21088806500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220114', '77300', '77700', '77100', '78100', '10096725', '781574668408', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220114', '146000', '145500', '143500', '150500', '2850564', '418146412000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220117', '127000', '127500', '124500', '128000', '3730393', '470158740000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220117', '214500', '214500', '212500', '217000', '53891', '11547295000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220117', '80500', '81200', '79900', '81900', '201597', '16246024400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220117', '77500', '77600', '76900', '77800', '8785122', '678903113900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220117', '140500', '145000', '139500', '145500', '1727769', '243913972000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220118', '126500', '126500', '125000', '127500', '3607850', '455389993500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220118', '213500', '216000', '210500', '216500', '79783', '17005229000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220118', '79300', '80900', '79000', '81300', '224720', '17938436800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220118', '77000', '77600', '76600', '77800', '9592788', '740278857400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220118', '138000', '140500', '137500', '142000', '1340867', '186693519500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220119', '127000', '123500', '123500', '128500', '4094609', '517204557500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220119', '216500', '214500', '214500', '220000', '107796', '23422373000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220119', '78100', '78800', '77700', '80200', '285099', '22441048800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220119', '76300', '76500', '76100', '76900', '10598290', '810150634900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220119', '137000', '136000', '135500', '139500', '1329933', '182324755500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220120', '125000', '126000', '123500', '126500', '5441986', '677312323500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220120', '207500', '217500', '207000', '217500', '115323', '24172720000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220120', '79200', '78800', '78600', '79800', '204484', '16187186200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220120', '76500', '76200', '75900', '76700', '9708168', '741154141302', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220120', '140000', '137500', '136000', '140000', '1103779', '152661023500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220121', '119000', '121500', '118000', '122500', '6465040', '774548223500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220121', '209000', '206000', '205500', '210000', '62424', '13013366500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220121', '79200', '78600', '78100', '79700', '216400', '17079695400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220121', '75600', '75800', '74700', '75800', '15774888', '1186292783000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220121', '133500', '137500', '131000', '138000', '1954318', '260863160000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220124', '119000', '116500', '116500', '120500', '4883822', '577393696500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220124', '208500', '208500', '206000', '210500', '69277', '14423007000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220124', '76600', '79200', '76200', '79700', '333545', '25767747500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220124', '75100', '75400', '74700', '75800', '13691134', '1028859496700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220124', '134000', '132000', '130000', '136000', '1502530', '200221582000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220125', '118000', '118000', '116500', '120000', '5702595', '672613722109', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220125', '203500', '206000', '202000', '208500', '79984', '16298794500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220125', '74400', '76100', '73400', '76600', '429846', '31963354500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220125', '74000', '74800', '73200', '75000', '17766704', '1313117613328', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220125', '131000', '134500', '130000', '135500', '1448593', '191562559000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220126', '117500', '119000', '117500', '119500', '3416240', '404643108500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220126', '207500', '206500', '203500', '208500', '75547', '15614123000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220126', '75000', '74400', '74300', '75600', '258489', '19374722800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220126', '73300', '73900', '73100', '74400', '12976730', '955547183400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220126', '129000', '131500', '128500', '132500', '988127', '128326816000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220127', '113500', '119500', '111000', '119500', '6679404', '761226879000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220127', '199000', '208500', '197500', '210000', '121451', '24303537500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220127', '72200', '75000', '72000', '76300', '472284', '34551764100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220127', '71300', '73800', '71300', '74000', '22274777', '1603685111200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220127', '124000', '129500', '122500', '130500', '1588541', '199428022000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220128', '120500', '115000', '114500', '121500', '4776510', '568486717500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220128', '200500', '201000', '197500', '202500', '133953', '26862896000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220128', '74000', '73200', '71900', '74500', '393314', '28878638200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220128', '73300', '71300', '71200', '73700', '21367447', '1552585967650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220128', '127500', '125000', '124000', '127500', '1048524', '132281381500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220203', '124000', '124500', '124000', '127000', '5171178', '647974457000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220203', '209000', '205000', '204000', '211500', '115915', '24232147500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220203', '74600', '74800', '74500', '76300', '225616', '16934913600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220203', '73300', '74900', '73300', '74900', '17744721', '1314506070081', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220203', '126000', '130000', '126000', '130500', '1236485', '157683701000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220204', '124500', '125500', '124000', '127000', '3037097', '379979452500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220204', '211000', '211000', '208000', '212500', '75819', '15941922500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220204', '76300', '75000', '74700', '76500', '249415', '18925017700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220204', '74000', '74300', '73400', '74600', '12730034', '941413120563', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220204', '128000', '126000', '125000', '128000', '715127', '90671845500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220207', '123000', '123000', '119500', '123500', '4804261', '583282342500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220207', '213500', '210000', '208500', '214000', '84861', '18001966000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220207', '76200', '77100', '75700', '77100', '224120', '17068487800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220207', '73000', '73500', '72400', '73600', '14240838', '1037300433232', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220207', '125000', '127500', '124000', '127500', '907137', '113621915000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220208', '125000', '124500', '123500', '126000', '4054097', '506437193000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220208', '214500', '216500', '212500', '219000', '82874', '17827149500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220208', '76300', '77200', '75600', '78200', '253899', '19539034800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220208', '73500', '73800', '73000', '74200', '11736666', '863666435400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220208', '124000', '125000', '123500', '126500', '635927', '79408738500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220209', '126000', '127000', '124500', '128000', '4339337', '548846549000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220209', '216500', '214500', '214000', '217000', '51838', '11177729500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220209', '77100', '76600', '76400', '77400', '148035', '11384748600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220209', '74700', '74300', '74000', '74700', '9699122', '722221184750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220209', '129000', '126000', '125500', '129000', '1151000', '147182123000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220210', '129500', '129000', '127000', '131000', '7269729', '939935633500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220210', '218000', '216500', '214000', '218500', '75510', '16372129000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220210', '77800', '77200', '77000', '78200', '275077', '21362986400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220210', '75400', '75600', '74700', '75800', '17746033', '1337516647000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220210', '128500', '131000', '126000', '131500', '1304496', '167246762000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220211', '132000', '130500', '130000', '132500', '6057207', '795970823637', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220211', '216000', '216500', '214500', '218000', '65943', '14238090000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220211', '75000', '77000', '74400', '77300', '645124', '48414332100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220211', '74900', '75000', '74600', '75500', '12205407', '915455022610', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220211', '126500', '126500', '126000', '128500', '640135', '81159000500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220214', '132500', '130000', '129500', '132500', '4962205', '652422384500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220214', '212500', '216500', '211000', '217500', '59077', '12581163000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220214', '75500', '73900', '73800', '75700', '364286', '27306997900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220214', '73700', '74400', '73100', '74500', '13993255', '1030683563200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220214', '123000', '124000', '121500', '126000', '982772', '120965069000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220215', '127000', '131500', '127000', '132000', '5097120', '656447949000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220215', '212000', '213000', '210000', '213500', '59741', '12650925500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220215', '75500', '75500', '75400', '76100', '215429', '16294045300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220215', '73700', '74100', '73100', '74200', '9320365', '686706909200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220215', '122000', '123500', '120500', '124500', '828330', '101182975500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220216', '130500', '131000', '130000', '132500', '3499809', '459242437500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220216', '213500', '212500', '210500', '215500', '74048', '15746151000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220216', '76300', '76000', '75900', '76700', '189127', '14426560000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220216', '74800', '74600', '74200', '74900', '10767386', '802448854700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220216', '123000', '124500', '122500', '125000', '679538', '83743143000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220217', '133000', '130500', '130000', '134000', '5433402', '719950695198', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220217', '215500', '215000', '212500', '217000', '88797', '19119124000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220217', '77000', '76800', '76100', '78200', '281807', '21778265400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220217', '75000', '75000', '74500', '75600', '13605382', '1021980123500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220217', '124000', '123000', '122500', '126000', '1006830', '125060141500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220218', '131500', '131500', '129500', '133000', '3108887', '407714952500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220218', '216000', '212500', '212500', '217000', '44963', '9680679500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220218', '77200', '76100', '76000', '77900', '208507', '16108795008', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220218', '74300', '74600', '73700', '74800', '10122226', '751583038400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220218', '123500', '122000', '121000', '124000', '684818', '84019287000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220221', '130000', '129000', '127000', '130500', '4048108', '521940432500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220221', '211000', '212000', '210000', '214000', '65384', '13830189500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220221', '77200', '75300', '75300', '77200', '215336', '16481322300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220221', '74200', '73200', '72600', '74300', '10489717', '769773939300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220221', '124500', '120500', '120000', '124500', '680962', '83446203500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220222', '128500', '127000', '126000', '129500', '3179806', '405764197000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220222', '197500', '207000', '194500', '207000', '397835', '78339864500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220222', '76200', '76500', '75200', '76700', '296202', '22450968100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220222', '73400', '73000', '72800', '73400', '11692469', '854469006291', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220222', '121500', '121500', '121000', '123000', '699128', '85107250500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220223', '128500', '130000', '127000', '130500', '2752112', '353756696750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220223', '197500', '198500', '196000', '199000', '158430', '31245457500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220223', '75800', '76900', '75200', '76900', '184706', '14020156900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220223', '73000', '73800', '72800', '73800', '10397964', '759964784500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220223', '125500', '123000', '122000', '127000', '1198273', '149364617000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220224', '122500', '125500', '122000', '126000', '5748069', '709502116804', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220224', '192500', '195000', '191500', '196500', '194120', '37523229000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220224', '73700', '75000', '72900', '75200', '312305', '23107057500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220224', '71500', '72300', '71300', '72300', '15759283', '1130166428800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220224', '124000', '124500', '123000', '127500', '1218895', '152308207000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220225', '123000', '125500', '122500', '126000', '3309625', '410516337000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220225', '190000', '193000', '188500', '194000', '184818', '35188351000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220225', '74100', '74300', '73800', '75000', '188551', '14028258700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220225', '71900', '72100', '71900', '72600', '13168484', '950762004400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220225', '124000', '126000', '123000', '126500', '714011', '88895746000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220228', '123500', '123000', '121000', '123500', '3224264', '395526449500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220228', '190500', '190000', '187500', '190500', '110816', '21038212500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220228', '75200', '74000', '73400', '75200', '263755', '19715916900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220228', '72100', '71100', '71000', '72100', '17781783', '1272250751300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220228', '123500', '123500', '121000', '123500', '851199', '104376414500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220302', '125000', '124500', '123000', '126500', '2903340', '361484132000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220302', '188000', '190500', '187000', '190500', '176655', '33255493500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220302', '74000', '74900', '74000', '75300', '210499', '15664157700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220302', '71700', '72300', '71500', '72400', '12481430', '897368743880', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220302', '123500', '123000', '122000', '125000', '678583', '83678125000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220303', '129000', '128000', '127000', '129500', '3088097', '396561962000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220303', '189500', '189000', '187500', '190500', '107526', '20356109000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220303', '74100', '73600', '72500', '74500', '287319', '21222224300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220303', '72900', '72300', '72200', '73100', '13232638', '962676478940', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220303', '127500', '125000', '124500', '128000', '799782', '101042071500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220304', '124500', '127500', '124000', '128000', '3249773', '406303906500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220304', '189500', '189500', '188000', '191000', '81486', '15448625000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220304', '75100', '74100', '73500', '75500', '262937', '19610126300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220304', '71500', '72700', '71200', '72700', '13409634', '960572417800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220304', '123500', '126500', '123000', '127000', '695378', '86244084500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220307', '119500', '119000', '119000', '121000', '5203286', '623418762500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220307', '181000', '186000', '180000', '186500', '196068', '35720216000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220307', '73200', '73300', '73100', '74400', '305662', '22442948400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220307', '70100', '70000', '69900', '70600', '18617138', '1305288850400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220307', '120500', '121500', '119000', '122000', '957534', '115130237000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220308', '118000', '117000', '116500', '119500', '3619045', '427717571500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220308', '181000', '178000', '177000', '183000', '140918', '25487564000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220308', '73000', '72900', '72400', '73600', '242903', '17746237000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220308', '69500', '68800', '68700', '70000', '15828269', '1100279437100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220308', '118000', '118000', '117000', '120000', '866699', '102802289000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220310', '120000', '121000', '118500', '121500', '3912683', '470385190000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220310', '185500', '186000', '181500', '186500', '158869', '29439966625', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220310', '73600', '74000', '73200', '74400', '273569', '20152312200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220310', '71200', '70800', '70500', '71200', '21159248', '1500935516076', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220310', '120500', '121000', '119000', '121500', '878951', '105659529500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220311', '117000', '118500', '115500', '119000', '3087532', '360482875000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220311', '185500', '184500', '183000', '187000', '62252', '11532137000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220311', '73600', '73300', '73000', '73800', '197369', '14493565100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220311', '70000', '70500', '69700', '70700', '15787655', '1105586321900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220311', '122000', '120000', '119500', '122500', '648403', '78594804000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220314', '116000', '115500', '114500', '117000', '3172353', '366557933000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220314', '184500', '184000', '183000', '186500', '80376', '14853101000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220314', '72400', '73200', '72000', '73700', '194752', '14137507900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220314', '70200', '70000', '69600', '70200', '9040993', '632752468500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220314', '122000', '121500', '121000', '124000', '842386', '103026719000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220315', '112500', '114500', '112000', '115500', '3578256', '404689423000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220315', '183000', '184000', '181500', '185000', '79349', '14548968000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220315', '70900', '71900', '70500', '71900', '287398', '20396317900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220315', '69500', '69800', '69500', '70100', '10258562', '715550312992', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220315', '123000', '121500', '121000', '124500', '754807', '93031774500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220316', '116500', '115000', '114000', '117000', '3739977', '431645677000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220316', '184500', '183500', '182000', '188000', '90274', '16636111500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220316', '72500', '71100', '70800', '72500', '290584', '20772238200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220316', '70400', '70200', '69700', '70500', '10175750', '713364992981', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220316', '125000', '124500', '121500', '125000', '805188', '99478227000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220317', '124000', '121000', '121000', '124500', '7219813', '886591077500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220317', '184500', '187000', '184500', '188500', '85777', '15968450000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220317', '73800', '73500', '73100', '74300', '257937', '19007667700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220317', '71200', '71200', '70900', '71800', '17646315', '1258698481050', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220317', '126000', '126000', '125000', '127000', '1038478', '131139216000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220318', '124000', '124000', '121000', '125000', '4493159', '552672916000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220318', '188000', '184500', '183000', '188000', '184481', '34452399500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220318', '75300', '73100', '73000', '75500', '387159', '29016532200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220318', '70700', '70600', '70200', '70900', '14410038', '1017183110700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220318', '123500', '126500', '123500', '126500', '959017', '119224979000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220321', '122000', '124000', '121000', '124500', '3433809', '419325638500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220321', '188500', '188000', '188000', '191000', '61749', '11653230000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220321', '73600', '75000', '73500', '75400', '163982', '12156793300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220321', '69900', '70900', '69900', '71000', '11169002', '784175429300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220321', '123000', '124000', '122000', '124500', '578097', '71109338500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220322', '123500', '121000', '121000', '124000', '2246439', '275489017000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220322', '198000', '191000', '189500', '198000', '198054', '38772661500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220322', '74400', '74100', '73700', '74600', '207271', '15382302200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220322', '70300', '69900', '69900', '70500', '9402666', '660385691100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220322', '124000', '122500', '122000', '124500', '628292', '77389448000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220323', '123500', '124000', '122000', '124500', '4085633', '502102130435', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220323', '201500', '198000', '197500', '202500', '146384', '29372332000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220323', '75300', '75100', '74700', '75500', '174000', '13082214400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220323', '70500', '70600', '70300', '71200', '12398025', '875833161100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220323', '123000', '124500', '122500', '125000', '755327', '93313080500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220324', '120500', '121000', '119500', '122000', '4215272', '507615750500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220324', '200000', '199000', '198500', '201000', '72672', '14514787000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220324', '75500', '74500', '74500', '75500', '163016', '12249957000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220324', '69800', '69600', '69600', '70300', '37943357', '2628885553700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220324', '121000', '122000', '120000', '122500', '742512', '89849147500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220325', '118000', '122000', '118000', '123000', '5514940', '657415420500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220325', '201000', '199000', '198000', '202000', '87175', '17459827000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220325', '74200', '74800', '73900', '75400', '203758', '15138992600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220325', '69800', '70100', '69600', '70200', '12986010', '906006321000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220325', '120500', '122000', '119500', '122500', '629103', '75744899000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220328', '118000', '117500', '116500', '119500', '3234792', '382155919000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220328', '208000', '198500', '198000', '210000', '145643', '30142279500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220328', '74600', '73300', '73000', '74900', '250772', '18580515900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220328', '69700', '69500', '69200', '69900', '12619289', '878172199900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220328', '120000', '120000', '119000', '121000', '477494', '57238720000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220329', '120000', '119500', '118500', '120500', '3375247', '403039899000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220329', '207500', '209500', '205000', '211500', '92615', '19209300000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220329', '75100', '75400', '74700', '75600', '173596', '13034656800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220329', '70200', '70000', '69800', '70300', '13686208', '958589509700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220329', '120000', '121500', '119500', '121500', '601558', '72226408500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220330', '121000', '123000', '120500', '123000', '3436282', '418424383000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220330', '207500', '208500', '205500', '209500', '74696', '15474955500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220330', '74800', '75700', '74600', '75700', '236561', '17745033400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220330', '69900', '70300', '69800', '70500', '12670187', '887514318650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220330', '121000', '121000', '120500', '123000', '750649', '91185985500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220331', '118000', '119500', '117500', '120000', '4558063', '541078296000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220331', '219000', '208500', '207500', '221000', '273026', '59465850500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220331', '76400', '75300', '75000', '76400', '306621', '23360458300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220331', '69600', '69900', '69600', '70200', '12510366', '873212583300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220331', '120500', '120500', '120000', '121500', '687529', '82829468500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220401', '116000', '117000', '116000', '117500', '3851558', '448384562000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220401', '220000', '216000', '215500', '221000', '121387', '26550452000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220401', '76200', '76500', '75400', '77000', '237282', '18109863100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220401', '69100', '69500', '69000', '69500', '15916846', '1100422376400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220401', '117500', '119500', '117000', '120000', '1358388', '160026410500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220404', '117000', '115000', '114500', '117500', '2470792', '286487173000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220404', '219500', '216500', '216500', '221000', '84100', '18447495000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220404', '75500', '75500', '74700', '76100', '177793', '13363005600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220404', '69300', '68900', '68600', '69300', '11107905', '766930294459', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220404', '117000', '117500', '116000', '118000', '714473', '83626087000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220405', '116500', '117500', '116000', '118000', '2101474', '245221124000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220405', '215000', '218500', '212000', '219000', '74038', '15870921000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220405', '75300', '75200', '74700', '75800', '128510', '9672639500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220405', '69200', '69400', '69100', '69600', '8467248', '586498194900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220405', '117500', '118500', '117000', '119000', '635707', '74713194500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220406', '113000', '114500', '113000', '115500', '4541938', '515844891500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220406', '220500', '214000', '213500', '221000', '134152', '29385371500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220406', '74800', '75100', '74600', '75900', '152048', '11411093100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220406', '68500', '68600', '68500', '68800', '15517308', '1064606110092', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220406', '114000', '116500', '114000', '117500', '1301974', '149538283000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220407', '113500', '111500', '110500', '114500', '5027865', '564777583500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220407', '220000', '220000', '220000', '223500', '143528', '31804669000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220407', '73800', '74000', '73100', '74400', '207878', '15323393500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220407', '68000', '68500', '68000', '68500', '20683327', '1409872624700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220407', '114500', '113000', '112500', '116500', '1626623', '185771309500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220408', '112000', '113000', '110500', '114000', '4268316', '478158280000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220408', '216500', '219500', '215500', '219500', '113383', '24643068500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220408', '74500', '74200', '73600', '74600', '140302', '10396908000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220408', '67800', '68100', '67700', '68300', '15453191', '1050375034852', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220408', '122000', '116500', '116000', '123000', '3064268', '367287046000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220411', '111500', '111000', '110500', '113000', '2390786', '266927086000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220411', '219500', '215500', '214000', '221000', '90991', '19803451500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220411', '74900', '74200', '74100', '75600', '155604', '11684913600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220411', '67900', '67800', '67400', '68100', '12263735', '831094572700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220411', '125000', '124500', '123000', '126500', '2333625', '292162091000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220412', '111000', '110500', '110500', '113000', '2738163', '305373585500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220412', '216500', '218500', '216000', '220000', '67183', '14632663000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220412', '72900', '74900', '72600', '74900', '213766', '15637794400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220412', '67000', '67600', '67000', '67700', '13924389', '936611863500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220412', '122500', '123000', '121500', '125500', '1383096', '170246489500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220413', '113000', '112000', '111000', '113000', '2484490', '278810904000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220413', '216500', '218500', '214000', '220000', '81887', '17749847500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220413', '74800', '73500', '73000', '74800', '119235', '8825798300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220413', '68700', '67300', '67200', '69000', '17378619', '1183210424500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220413', '127000', '123500', '123500', '127000', '1618670', '204197094000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220414', '110000', '113000', '110000', '113000', '4715700', '522072911000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220414', '217500', '215500', '215000', '219500', '100337', '21811741500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220414', '74800', '74600', '74200', '75200', '153254', '11463755300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220414', '67500', '68700', '67500', '68700', '16409494', '1112667612000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220414', '126000', '128000', '125500', '129000', '1540317', '196040513500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220415', '108000', '108000', '107000', '108500', '3694012', '397259250000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220415', '213000', '216500', '210000', '217000', '164649', '35089625000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220415', '73300', '73700', '72900', '74400', '146515', '10743335300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220415', '66600', '67200', '66500', '67300', '13176415', '878858388800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220415', '126500', '125500', '124500', '128500', '1101269', '139171334500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220418', '109000', '107000', '106500', '109500', '2670439', '289567673000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220418', '208000', '211000', '206500', '211000', '108265', '22536430900', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220418', '73100', '72700', '72300', '73400', '120298', '8772718600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220418', '66700', '66500', '66100', '67100', '10119203', '675310095100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220418', '124500', '125000', '123500', '126000', '627153', '78149420000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220419', '112500', '110000', '109500', '112500', '3021192', '337878469500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220419', '207000', '208500', '206500', '210500', '85793', '17835302000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220419', '73600', '73300', '73000', '73800', '116000', '8526027800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220419', '67300', '67100', '67000', '68000', '12959434', '876087930051', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220419', '124500', '125500', '124000', '128000', '710036', '88915142500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220420', '112500', '112500', '111000', '113000', '2905007', '325207220500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220420', '208000', '207000', '207000', '210500', '84173', '17535923000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220420', '74400', '73300', '73300', '75000', '176968', '13134917300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220420', '67400', '67000', '66500', '67400', '16693293', '1116160503800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220420', '123500', '125000', '122000', '125000', '930835', '114576720000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220421', '113000', '112500', '112500', '115000', '3199858', '364498039000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220421', '210000', '210000', '209000', '211500', '73584', '15461148000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220421', '75100', '75100', '74200', '75200', '174414', '13051582300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220421', '67700', '67600', '67500', '68300', '12847448', '872983300180', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220421', '125000', '124000', '123500', '126000', '685827', '85614385000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220422', '110500', '110500', '110500', '112000', '2360834', '261795079000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220422', '214500', '207500', '207500', '217000', '134782', '28800236500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220422', '73800', '74200', '73600', '74300', '168464', '12446033300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220422', '67000', '67200', '66700', '67300', '11791478', '789392306300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220422', '123000', '123000', '122000', '124000', '576346', '70792344500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220425', '108000', '109000', '108000', '109500', '2282343', '247214177500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220425', '210000', '212000', '209500', '213000', '52077', '10994462000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220425', '72800', '73000', '72700', '74000', '192840', '14091770500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220425', '66300', '66500', '66300', '66700', '11016474', '731676244400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220425', '119000', '120500', '119000', '121500', '979122', '117399094500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220426', '111000', '109500', '108000', '111000', '2969516', '325299479000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220426', '207000', '211500', '206000', '211500', '61614', '12797139500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220426', '72700', '73400', '72400', '73400', '185533', '13493221500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220426', '66100', '66400', '66100', '66700', '12946923', '858461258448', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220426', '121500', '120000', '119500', '122000', '700343', '84782848000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220427', '108500', '108000', '107500', '109500', '3261290', '352792663045', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220427', '205000', '203500', '202000', '207000', '83789', '17149508500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220427', '71400', '71100', '70700', '71700', '216299', '15402305400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220427', '65000', '65400', '64900', '65500', '18122084', '1179918512650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220427', '119500', '118000', '118000', '120500', '595523', '71114215500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220428', '109500', '109500', '108000', '110000', '2804966', '305740621500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220428', '210000', '209500', '206500', '210500', '72524', '15166949000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220428', '73100', '71900', '71500', '73100', '247673', '17867707500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220428', '64800', '65400', '64500', '65500', '16895527', '1094277578880', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220428', '120500', '120500', '119000', '120500', '594286', '71199121500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220429', '112500', '110000', '109500', '112500', '3752415', '418644000000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220429', '210000', '209000', '207000', '211000', '74462', '15598049500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220429', '73300', '72600', '72500', '73400', '252247', '18414937600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220429', '67400', '65100', '65000', '67600', '26190390', '1747030218800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220429', '116500', '120000', '115500', '120500', '1980893', '231274753000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220502', '110500', '110000', '110000', '111500', '2175384', '240458517500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220502', '206000', '209500', '202500', '211000', '84008', '17195536500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220502', '73800', '72700', '72600', '73800', '118119', '8660440500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220502', '67300', '66600', '66500', '67600', '14106184', '946016270200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220502', '116500', '115000', '114500', '116500', '513571', '59511698500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220503', '110000', '111000', '109500', '112000', '2676115', '296292858500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220503', '204000', '204500', '204000', '206500', '56685', '11600918500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220503', '73600', '73100', '73100', '74100', '120969', '8923013400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220503', '67500', '67400', '67300', '68400', '14168875', '962643054300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220503', '115500', '117000', '115500', '117500', '618090', '71621375000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220504', '109500', '110500', '108500', '111000', '2491890', '272895368240', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220504', '207500', '204000', '204000', '208500', '75515', '15599934000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220504', '74000', '73500', '73400', '74500', '151006', '11188345500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220504', '67900', '68000', '67500', '68400', '11505248', '781073326235', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220504', '115500', '116000', '115000', '117000', '532967', '61674839500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220506', '107500', '108000', '106500', '108500', '2566813', '276060648705', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220506', '205500', '206000', '202500', '207000', '77997', '15943348500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220506', '72800', '73700', '72600', '74000', '192431', '14044713500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220506', '66500', '67000', '66500', '67100', '14356156', '957335193600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220506', '115000', '114000', '114000', '116000', '471521', '54159079500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220509', '107500', '107000', '106500', '109000', '2203472', '237914727500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220509', '203000', '203500', '201000', '206500', '46652', '9472100000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220509', '71800', '71900', '71800', '73200', '128558', '9282779900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220509', '66100', '66300', '66100', '66900', '11858736', '787562955000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220509', '113000', '115000', '112500', '115500', '717315', '81390430000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220510', '110000', '107000', '107000', '111000', '4141923', '450008878000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220510', '199500', '202000', '195000', '202000', '94186', '18652418000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220510', '70900', '72100', '69600', '72200', '274237', '19395203000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220510', '65700', '65900', '65300', '66300', '17235605', '1132067708900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220510', '111500', '111000', '109500', '112500', '809529', '89837867000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220511', '110500', '110500', '108000', '112500', '3658168', '404954668500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220511', '196000', '196500', '194500', '198500', '86555', '16954688500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220511', '70700', '70200', '70100', '71200', '168605', '11923688400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220511', '65700', '65500', '65200', '66300', '12330920', '812298026600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220511', '109000', '111000', '108000', '111500', '1267614', '138339307500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220512', '109000', '109500', '108500', '111500', '4132948', '453649533500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220512', '199500', '195500', '195500', '206000', '153302', '30716371000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220512', '69900', '70800', '69900', '71200', '324238', '22828536600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220512', '64900', '65200', '64900', '65500', '16414188', '1069685385550', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220512', '106000', '108000', '105500', '109500', '1191168', '127800141000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220513', '112500', '109000', '109000', '112500', '4003349', '446418243500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220513', '203000', '202000', '199000', '206000', '89619', '18228650000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220513', '75000', '70800', '70700', '75000', '474540', '34926270200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220513', '66500', '65300', '65200', '66700', '14551536', '962476162900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220513', '107500', '106500', '106500', '108500', '705097', '76026909000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220516', '110500', '113500', '110000', '114000', '3930044', '437751618500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220516', '204500', '205000', '202000', '209000', '72512', '14880595000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220516', '74400', '75000', '73700', '75000', '157091', '11681356900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220516', '66300', '67100', '66100', '67400', '11937555', '796060691900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220516', '107500', '109000', '107000', '109500', '458454', '49461504500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220517', '112500', '111000', '110500', '113000', '2056143', '230228679500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220517', '200000', '204500', '199500', '207000', '81278', '16399137000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220517', '75300', '74400', '74300', '76600', '237851', '17951195600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220517', '67600', '66600', '66600', '67900', '15680447', '1058322764800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220517', '107500', '107500', '106000', '108500', '846435', '90742922500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220518', '113500', '114000', '113000', '115000', '3570113', '407130704500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220518', '201500', '200000', '200000', '202500', '46947', '9440399000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220518', '75200', '75000', '74600', '75900', '196858', '14818919200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220518', '68100', '68300', '67600', '68700', '16486319', '1122585202585', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220518', '107000', '108500', '106500', '109500', '838409', '90200817500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220519', '111000', '110500', '110000', '112500', '3680049', '409121264500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220519', '198500', '198500', '198000', '201500', '83496', '16630435500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220519', '74400', '74200', '73500', '75400', '263435', '19673142900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220519', '67500', '66500', '66500', '67600', '17073727', '1147743790508', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220519', '101500', '104000', '101000', '104500', '1986525', '203130172500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220520', '112500', '111500', '111000', '113000', '2398978', '269003284000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220520', '199500', '199500', '198500', '202500', '116467', '23333787500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220520', '76000', '74300', '74300', '76900', '235263', '17856092500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220520', '68000', '67800', '67700', '68400', '12109671', '824048609800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220520', '104500', '102000', '101000', '105500', '1205007', '124519396500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220523', '113000', '113000', '111000', '113500', '3160028', '355053959000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220523', '199500', '199500', '196000', '201000', '124930', '24687736000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220523', '75400', '75500', '74600', '76200', '146725', '11072400300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220523', '67900', '68800', '67600', '68800', '13684088', '931341158100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220523', '105000', '105000', '103500', '106500', '688569', '72309089500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220524', '108500', '111500', '108500', '112000', '4491835', '493006547000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220524', '196500', '199500', '196500', '204000', '82260', '16384630500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220524', '75100', '75100', '74600', '76000', '148283', '11192545500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220524', '66500', '67500', '66500', '67700', '15482576', '1035492905500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220524', '102500', '105000', '102000', '105000', '722885', '74490012000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220525', '108000', '109500', '107000', '110000', '4151560', '449253686500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220525', '198500', '199000', '197000', '199000', '47670', '9451664000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220525', '75400', '76400', '74600', '76400', '121100', '9143756400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220525', '66400', '66700', '65900', '67100', '15150490', '1007805029400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220525', '102500', '103000', '101500', '103500', '504358', '51685828500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220526', '103000', '107500', '101500', '108500', '8523001', '893078934000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220526', '196000', '197000', '195000', '199000', '81588', '16026249500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220526', '74000', '74400', '73600', '76000', '187473', '13945825900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220526', '65900', '66300', '65500', '67200', '15970890', '1057298883100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220526', '102000', '103000', '101000', '104000', '677212', '69460681500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220527', '106000', '105500', '105000', '107000', '3686487', '390822023500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220527', '199500', '197500', '196500', '199500', '79750', '15818728500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220527', '74700', '74800', '74000', '75100', '178710', '13340520500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220527', '66500', '66700', '66200', '66900', '11405555', '759034579700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220527', '103500', '104000', '102500', '105000', '668914', '69445061000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220530', '107000', '108000', '106000', '108000', '2054526', '219413029151', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220530', '199000', '200000', '198000', '203500', '76550', '15332133000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220530', '81900', '77400', '77200', '82000', '1023699', '82276929000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220530', '67700', '67500', '66900', '67800', '14255484', '960592764000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220530', '106000', '105000', '104500', '106000', '623975', '65826215500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220531', '108000', '106500', '105500', '108000', '4024509', '431706106000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220531', '199000', '199500', '196500', '200500', '329951', '65550300000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220531', '80200', '81900', '80200', '81900', '1117702', '90110128800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220531', '67400', '67500', '66700', '67500', '24365002', '1637773742750', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220531', '105000', '106000', '104500', '106500', '1819056', '191385069000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220602', '107000', '106000', '106000', '107500', '3097583', '330342100540', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220602', '197000', '197500', '195500', '198500', '84040', '16552019000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220602', '80200', '82000', '79700', '82000', '341482', '27522916760', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220602', '66700', '66600', '66400', '67000', '14959443', '996681075588', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220602', '104000', '104000', '102000', '104000', '660479', '68093497000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220603', '107000', '108000', '107000', '108500', '1638006', '176160698000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220603', '197000', '198500', '195000', '198500', '55389', '10900299500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220603', '80100', '80600', '80000', '81100', '202543', '16278216985', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220603', '66800', '67200', '66800', '67300', '8222883', '550654655700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220603', '104000', '105000', '103500', '105500', '610654', '63710423000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220607', '104000', '105500', '103500', '106000', '3174521', '332407380500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220607', '195500', '197500', '195000', '197500', '106065', '20741821500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220607', '80300', '79900', '79500', '80900', '355128', '28548408600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220607', '65500', '66200', '65400', '66400', '19355755', '1273444989300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220607', '101500', '103500', '101500', '103500', '664509', '67872314500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220608', '106000', '104500', '104500', '107500', '3075530', '326582976052', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220608', '199000', '195500', '194500', '199500', '100051', '19758895500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220608', '80700', '79700', '79600', '81000', '180525', '14547603300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220608', '65300', '65400', '65300', '65700', '12483180', '817379109300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220608', '102000', '102000', '101500', '103000', '568572', '58024136500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220609', '105500', '105500', '104500', '107000', '4640744', '491231766000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220609', '200000', '199000', '196000', '200000', '122355', '24342705500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220609', '81400', '80400', '80100', '81600', '581520', '47233548900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220609', '65200', '65100', '64500', '65200', '25790725', '1673763680952', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220609', '102500', '102000', '101000', '102500', '929702', '94875628000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220610', '103500', '104000', '102500', '104500', '3480289', '358674454500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220610', '198000', '198000', '195500', '199000', '69142', '13658873500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220610', '80800', '81300', '80400', '81600', '302694', '24498868300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220610', '63800', '64000', '63800', '64400', '22193552', '1419245099700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220610', '100500', '101000', '100000', '102000', '595867', '60134588500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220613', '99000', '100000', '99000', '101000', '4133447', '412791154508', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220613', '195000', '197000', '194000', '202500', '114925', '22726019000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220613', '77800', '79400', '77500', '79800', '217420', '17018307600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220613', '62100', '62400', '62100', '62800', '22157816', '1380636801900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220613', '95100', '98500', '95100', '98900', '1400191', '135122505400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220614', '99100', '96900', '96800', '99600', '3242550', '319154836100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220614', '192000', '196500', '191000', '196500', '105311', '20334960000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220614', '77000', '77400', '75600', '77500', '251534', '19269705100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220614', '61900', '61200', '61100', '62200', '24606419', '1519195265000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220614', '95300', '92800', '92700', '96300', '1012058', '95703381900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220615', '97900', '98500', '96700', '98900', '2578500', '251800088000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220615', '194500', '192500', '190000', '196000', '80080', '15512778500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220615', '76200', '76500', '75400', '77200', '289979', '22157398700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220615', '60700', '61300', '60200', '61500', '26811224', '1630190882434', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220615', '93200', '94500', '92500', '95500', '829525', '77529682000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220616', '97400', '99900', '97100', '101500', '3810703', '379577327900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220616', '192500', '194000', '192000', '196500', '84759', '16401477500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220616', '77500', '76800', '76700', '79900', '246087', '19330369300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220616', '60900', '61300', '60500', '61800', '23394895', '1431052309321', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220616', '94400', '94700', '93800', '97600', '860556', '82263741900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220617', '96400', '95100', '95000', '96400', '3965464', '379777056285', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220617', '196000', '191500', '190500', '199500', '140498', '27311751500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220617', '78000', '77000', '76100', '78700', '281782', '21903778600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220617', '59800', '59400', '59400', '59900', '29053450', '1732449618748', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220617', '93200', '92800', '92000', '93700', '827209', '76781195400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220620', '94500', '96700', '93100', '96800', '2386222', '224647331300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220620', '194500', '195500', '192500', '196500', '68947', '13390600000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220620', '75900', '78000', '75300', '78300', '216021', '16515999300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220620', '58700', '59800', '58100', '59900', '34111306', '1997076972175', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220620', '90200', '93400', '89300', '93500', '919626', '83054648700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220621', '95200', '94700', '93900', '95900', '2707302', '256916587444', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220621', '195500', '197500', '194500', '198500', '52356', '10291340000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220621', '77600', '77500', '76000', '78600', '295841', '22928519500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220621', '58500', '58700', '58200', '59200', '25148109', '1474998298400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220621', '91000', '90300', '90000', '91400', '516032', '46793558800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220622', '92200', '95700', '91700', '95700', '3509830', '326448858700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220622', '199000', '197000', '194500', '202000', '163869', '32656222000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220622', '75600', '77100', '75300', '77700', '343081', '26220669100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220622', '57600', '59000', '57600', '59100', '23334687', '1360076149300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220622', '87200', '91400', '87100', '91500', '1196070', '105530602600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220623', '90200', '92100', '89700', '93000', '3983116', '362603763000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220623', '196000', '199500', '195500', '202000', '124096', '24534297500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220623', '75800', '76700', '75600', '77500', '331946', '25376301700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220623', '57400', '57700', '56800', '58000', '28338608', '1627019443340', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220623', '88300', '86800', '85600', '89800', '1418259', '124243610572', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220624', '91600', '90500', '90500', '92000', '3045970', '278278274300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220624', '196500', '198000', '194500', '198500', '54257', '10670190500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220624', '76700', '75500', '75500', '77800', '268252', '20648562453', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220624', '58400', '57900', '57700', '59100', '23256103', '1359292776100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220624', '89000', '88300', '88300', '90000', '877028', '78250507200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220627', '95000', '92700', '92600', '96100', '3408749', '322782387700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220627', '199500', '196000', '196000', '201500', '70280', '14013112500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220627', '79500', '76800', '76700', '79900', '241476', '19006183800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220627', '58800', '59000', '58300', '59900', '18122236', '1071186745402', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220627', '89700', '90200', '89000', '91000', '842826', '75897507000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220628', '95300', '94500', '93700', '95300', '2022966', '191563545550', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220628', '200500', '201000', '198000', '201500', '54177', '10839351500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220628', '81000', '79600', '78900', '81000', '253770', '20347247300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220628', '59400', '59200', '58700', '59500', '13540538', '800041009700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220628', '89000', '89100', '87800', '90100', '727402', '64535387100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220629', '94000', '93300', '92900', '94900', '2529973', '237096895400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220629', '200000', '199000', '199000', '201000', '46893', '9381431000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220629', '79300', '80300', '79100', '80900', '283084', '22599786700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220629', '58000', '58500', '58000', '58800', '14677138', '855770425874', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220629', '90700', '88000', '87400', '91800', '873866', '78581644600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220630', '91000', '91500', '91000', '93100', '3098854', '284596262600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220630', '201000', '201000', '199500', '203500', '98669', '19895127500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220630', '77900', '79000', '77900', '80000', '363380', '28542996200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220630', '57000', '57200', '57000', '57600', '18915142', '1082799462452', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220630', '88300', '90900', '88300', '90900', '790624', '70716496800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220701', '87500', '91000', '87100', '92500', '4959176', '440689971812', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220701', '202500', '204000', '197500', '204000', '103980', '20910391000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220701', '78600', '79000', '77800', '80800', '280501', '22149300000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220701', '56200', '56900', '55900', '57500', '24982097', '1412473217495', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220701', '89900', '89000', '88800', '92900', '1390290', '126354662100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220704', '89100', '87500', '86300', '89600', '4331728', '382388292200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220704', '201500', '200500', '198000', '202500', '90107', '18074670500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220704', '78500', '79100', '77300', '79500', '227337', '17783833100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220704', '57100', '56100', '55700', '57400', '17807126', '1012586831300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220704', '90200', '90800', '88600', '91000', '701722', '63135786400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220705', '92500', '90400', '90400', '93400', '3560085', '328065708900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220705', '196500', '202500', '196000', '202500', '142772', '28289214750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220705', '80800', '79300', '78600', '80900', '262482', '21057114100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220705', '57200', '57600', '57200', '58200', '14216539', '818079785900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220705', '95500', '91000', '90700', '96000', '1348997', '127292462600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220706', '92100', '92800', '90900', '93600', '3981326', '367383115600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220706', '184500', '195500', '183500', '197000', '184048', '34586079000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220706', '77800', '79400', '77400', '80900', '270194', '21290096600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220706', '56400', '57300', '56400', '57300', '16820461', '955957046500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220706', '93100', '94700', '92800', '95100', '1023511', '96174927031', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220707', '93900', '91300', '91300', '95200', '3330794', '313090153800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220707', '190000', '186500', '183500', '191000', '88036', '16593903000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220707', '78700', '79600', '77300', '79700', '224909', '17652023450', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220707', '58200', '56400', '56300', '58700', '21322833', '1234677644065', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220707', '95900', '94000', '93500', '96400', '1090036', '103828702500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220708', '94800', '95900', '94500', '96500', '2814478', '269081541900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220708', '196500', '189000', '189000', '198500', '136612', '26654805500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220708', '78400', '78200', '78200', '79400', '201762', '15901728900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220708', '58700', '58600', '58200', '59300', '15339271', '902198939736', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220708', '92000', '96300', '91800', '98300', '1494419', '140554588700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220711', '93700', '95000', '93500', '95700', '1885425', '178083167400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220711', '196000', '196500', '194500', '197500', '47122', '9225486000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220711', '78300', '78400', '77800', '79200', '129487', '10159598800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220711', '58800', '59300', '58700', '59600', '13042624', '771042671500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220711', '91300', '91500', '91000', '92700', '710884', '65226327300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220712', '93300', '94000', '91700', '94000', '2385688', '221641294600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220712', '201500', '195500', '194500', '202500', '111842', '22406023500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220712', '76900', '78400', '76500', '79000', '166886', '12898974200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220712', '58100', '58600', '58100', '58700', '9336061', '544403361000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220712', '90400', '90700', '89100', '90900', '654534', '58813513700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220713', '94000', '94600', '93800', '96400', '2721816', '258620343000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220713', '198500', '203000', '198000', '203500', '76894', '15448980686', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220713', '76800', '77900', '76300', '78400', '216291', '16712192200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220713', '58000', '58300', '58000', '58600', '10841315', '631711977700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220713', '91100', '89900', '89900', '92300', '676772', '61599571300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220714', '94000', '92800', '92300', '95500', '2550307', '239956379900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220714', '197000', '197500', '195000', '200500', '80597', '15885379500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220714', '76000', '76200', '76000', '77400', '225050', '17227593200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220714', '57500', '57500', '57400', '58200', '15067012', '869131233435', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220714', '90200', '90600', '89500', '91000', '658582', '59433953700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220715', '98700', '95900', '95500', '99000', '4457208', '434627155600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220715', '195500', '196500', '192000', '199000', '77228', '15076123500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220715', '75900', '76900', '74800', '76900', '181131', '13747075100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220715', '60000', '58400', '58100', '60000', '18685583', '1104045143300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220715', '90900', '90900', '89100', '91500', '604053', '54626157800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220718', '101000', '101000', '100000', '103500', '4564780', '464011815400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220718', '199000', '195500', '195000', '201500', '72531', '14446608000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220718', '76700', '76100', '76000', '77400', '133526', '10251126600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220718', '61900', '60600', '60500', '62000', '20832517', '1277727157981', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220718', '92500', '92500', '92000', '94400', '847838', '78661299800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220719', '100000', '100000', '98700', '100500', '2709084', '269911638800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220719', '200000', '197500', '197500', '201000', '47545', '9510680500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220719', '77000', '76300', '76200', '78100', '138665', '10703818300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220719', '60900', '61400', '60200', '61500', '15248261', '925919721166', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220719', '92900', '91700', '91400', '93000', '410666', '37906479500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220720', '102000', '103000', '101000', '104500', '3981053', '406686893500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220720', '198500', '201000', '197500', '203500', '84137', '16754242481', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220720', '78800', '77800', '77100', '78800', '173732', '13562666300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220720', '60500', '61800', '60500', '62100', '16782238', '1025939109200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220720', '94100', '95200', '93300', '95300', '643294', '60537319800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220721', '102500', '102000', '100500', '103000', '2143984', '218487709000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220721', '198500', '197500', '195500', '199000', '78153', '15430666000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220721', '77600', '77500', '77000', '78800', '186244', '14465293300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220721', '61800', '61100', '60700', '61900', '12291374', '754854999650', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220721', '94200', '94100', '93000', '94400', '444578', '41682907500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220722', '100000', '102500', '100000', '102500', '3126556', '315391441000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220722', '194500', '197000', '194000', '200500', '74042', '14497468000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220722', '78300', '77600', '77600', '78600', '169463', '13243298200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220722', '61300', '61800', '61200', '62200', '10261310', '631872940300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220722', '93500', '93800', '93500', '94700', '363025', '34065465500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220725', '100000', '99100', '98900', '101500', '2185108', '219113615100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220725', '193500', '195500', '193000', '195500', '57429', '11140418500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220725', '78700', '78000', '77900', '79200', '118647', '9348562400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220725', '61100', '60900', '60800', '61900', '9193681', '565540190900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220725', '93900', '93100', '93000', '94700', '351528', '32986773800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220726', '100500', '100500', '99100', '101000', '1636970', '164328558800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220726', '192000', '193000', '191000', '194500', '76744', '14729870000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220726', '78800', '78100', '77600', '78900', '88505', '6948727900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220726', '61700', '60800', '60800', '61900', '6597211', '405310045900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220726', '93600', '93500', '93300', '94700', '417522', '39179489500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220727', '100000', '101000', '98600', '101500', '3159499', '315123152800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220727', '193500', '193000', '192000', '194500', '52398', '10125560000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220727', '79900', '79000', '78100', '80000', '130250', '10305233500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220727', '61800', '61300', '61200', '61900', '7320997', '449989960800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220727', '94300', '93800', '93200', '94500', '330196', '30982094400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220728', '99400', '101000', '98900', '101500', '3359717', '335356694300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220728', '197000', '193500', '193500', '197000', '86853', '17014708558', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220728', '80500', '79300', '79200', '80500', '156860', '12578590400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220728', '61900', '62300', '61600', '62600', '10745302', '667085256100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220728', '93600', '95100', '93000', '95500', '666622', '62621883100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220729', '97900', '99900', '97400', '100000', '3899079', '382602153100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220729', '197500', '198000', '196000', '198500', '52227', '10305003500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220729', '81100', '80800', '80500', '82000', '183546', '14876873100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220729', '61400', '62400', '61300', '62600', '15093120', '932917972000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220729', '94400', '94200', '93600', '94800', '674170', '63525273200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220801', '97100', '97200', '96500', '98100', '2007646', '195150654462', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220801', '197500', '196000', '196000', '198000', '46966', '9252090500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220801', '81100', '80200', '80200', '81700', '211542', '17159047600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220801', '61300', '61000', '60300', '61700', '13154816', '803034710500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220801', '94400', '94800', '93600', '95300', '485739', '45911519200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220802', '96500', '97200', '96200', '97200', '1916851', '185073501100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220802', '197000', '196500', '196000', '198500', '43647', '8613392000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220802', '79800', '80300', '78800', '80500', '158585', '12612561200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220802', '61700', '61200', '61000', '61900', '13614895', '837567187000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220802', '93500', '94400', '93200', '95000', '474933', '44544455500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220803', '97500', '96900', '96100', '97500', '1703330', '165151135000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220803', '201500', '196500', '196500', '202000', '69638', '13936833000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220803', '80200', '79300', '79200', '80400', '180948', '14437858200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220803', '61300', '61600', '61000', '61600', '10053861', '615480978400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220803', '93800', '93500', '93000', '93900', '374218', '35002794000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220804', '97500', '98000', '97100', '98100', '1960526', '191399858800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220804', '201500', '200500', '200500', '203000', '50465', '10188566500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220804', '80400', '80200', '79600', '80700', '154300', '12375301200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220804', '61500', '61700', '61200', '61800', '9125439', '561835808800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220804', '96000', '94400', '94200', '96900', '1059583', '101616407100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220805', '98500', '98100', '97400', '98700', '2052852', '201487221500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220805', '205500', '202500', '201000', '206500', '67825', '13913524500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220805', '80200', '80900', '79900', '81300', '90632', '7291735100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220805', '61500', '61700', '61200', '61900', '9567620', '588582544800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220805', '95900', '96400', '95400', '96700', '447686', '42966624700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220808', '96300', '97700', '95800', '97700', '3206548', '308609577400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220808', '205000', '204500', '204000', '209500', '78426', '16224510500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220808', '80800', '79500', '79500', '80900', '118195', '9504044200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220808', '60800', '61400', '60600', '61400', '11313150', '689020306900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220808', '94000', '95800', '93600', '95800', '579176', '54506742100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220809', '95100', '96000', '94500', '96100', '3152955', '299582643300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220809', '205000', '203500', '201500', '208000', '78522', '16138543500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220809', '80700', '80900', '80100', '81300', '108929', '8788219100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220809', '60000', '60600', '59600', '60700', '18251170', '1094260322600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220809', '94700', '94000', '92800', '94700', '542364', '50890502700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220810', '91800', '91800', '91800', '93000', '4356568', '401100880900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220810', '203500', '205500', '202000', '207000', '48988', '9974105000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220810', '80500', '81400', '79800', '81400', '89640', '7203887300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220810', '59100', '58900', '58600', '59200', '18084349', '1065592854894', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220810', '92800', '93900', '92700', '94500', '502234', '46775288800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220811', '93300', '93500', '92600', '94400', '5206962', '486250440600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220811', '202000', '203000', '201000', '204500', '81342', '16436926500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220811', '83400', '81300', '80500', '83400', '345901', '28545834500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220811', '59900', '59600', '59300', '60000', '15141941', '903738904000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220811', '101000', '93900', '93400', '101000', '2683987', '264458189000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220812', '93300', '92800', '92600', '94400', '1910127', '178991479200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220812', '200000', '202000', '198000', '205000', '116767', '23353728500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220812', '84500', '83400', '82600', '84500', '234167', '19639870900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220812', '60200', '59500', '59400', '60700', '10786658', '648793200100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220812', '101000', '100500', '99600', '102500', '1151625', '116298429100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220816', '96700', '94500', '94400', '97600', '4267280', '411907055726', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220816', '197000', '200000', '196500', '200000', '126120', '24896780768', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220816', '84400', '85100', '84000', '85800', '255048', '21671075400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220816', '61000', '60500', '60300', '61600', '15036727', '917516142200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220816', '102000', '101500', '100000', '103000', '872610', '88732379000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220817', '97100', '96800', '95900', '97600', '1764674', '170779402300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220817', '198000', '197000', '196000', '199000', '80125', '15809104000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220817', '84600', '85300', '84400', '85500', '183420', '15569154500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220817', '60400', '61100', '60300', '61200', '9061518', '550059085700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220817', '103500', '102500', '102000', '105000', '1537894', '159191092000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220818', '95700', '95900', '95300', '96400', '1889587', '180883903300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220818', '198500', '197000', '195500', '200500', '97939', '19391109500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220818', '84300', '84300', '83500', '85000', '124006', '10474322200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220818', '61500', '60300', '60000', '61900', '16372754', '997986949000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220818', '102000', '102000', '100500', '103500', '768622', '78275203500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220819', '96400', '97000', '95900', '97500', '1890839', '183002249900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220819', '201000', '198000', '197000', '201500', '90681', '18044925000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220819', '83800', '84100', '83700', '84800', '169303', '14261127208', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220819', '60900', '61400', '60600', '61600', '6923679', '421908759900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220819', '101000', '101500', '100500', '102500', '571786', '58012384000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220822', '95200', '95200', '94000', '95600', '2293601', '217611164989', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220822', '200000', '199500', '199000', '201000', '60397', '12069420000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220822', '82100', '82300', '81600', '83300', '154463', '12711217100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220822', '60000', '60300', '59800', '60400', '8259865', '495732266100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220822', '100000', '99700', '99200', '101500', '664440', '66560403800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220823', '93600', '94100', '93600', '95400', '1932822', '182136272000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220823', '198500', '200000', '196000', '200000', '53222', '10536012500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220823', '81700', '80800', '80200', '81900', '160102', '12990405600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220823', '59100', '59000', '59000', '59600', '9041629', '535657353300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220823', '98200', '99100', '98000', '99700', '588286', '58052573400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220824', '93200', '93900', '93000', '94200', '1447036', '135255103300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220824', '196000', '198500', '196000', '198500', '52352', '10299541000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220824', '81300', '81700', '80800', '82700', '154796', '12620535600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220824', '59000', '59200', '59000', '59500', '8888486', '525406965200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220824', '98100', '98800', '97900', '99000', '557382', '54836398700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220825', '94100', '93600', '92100', '94100', '2189458', '204612857400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220825', '197500', '196000', '195500', '197500', '52895', '10401925500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220825', '83000', '81300', '81300', '83200', '138910', '11474066400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220825', '59700', '59200', '59000', '59700', '5767902', '342780937200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220825', '99100', '98900', '98300', '99700', '541955', '53639771200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220826', '95100', '95400', '94700', '96800', '2301949', '219965058400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220826', '196500', '197000', '196500', '199000', '72576', '14336020000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220826', '83100', '82000', '81800', '84100', '179376', '14887814200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220826', '60000', '60300', '59900', '60900', '9499995', '573040309950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220826', '100500', '99900', '99000', '100500', '549129', '54848698600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220829', '92500', '92700', '92000', '93300', '2619260', '241961435200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220829', '193000', '195500', '192000', '196000', '56496', '10948294500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220829', '80700', '81400', '80200', '81700', '148140', '11972798800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220829', '58600', '58700', '58600', '58900', '9841329', '577684200900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220829', '96200', '96800', '95200', '97500', '852805', '82043173400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220830', '93200', '92700', '92400', '93400', '1595242', '148058566200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220830', '194000', '193500', '192000', '195500', '53107', '10313444500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220830', '81500', '81500', '81000', '82000', '127797', '10424739400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220830', '58800', '58700', '58300', '59000', '9690044', '567627668500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220830', '97500', '96600', '95400', '97800', '514506', '49808190600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220831', '95200', '92600', '92100', '95500', '2421669', '228286190480', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220831', '195000', '192500', '190500', '195000', '91787', '17819639000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220831', '82000', '80600', '79800', '82000', '425644', '34815962600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220831', '59700', '58200', '58200', '59900', '14203512', '841319635900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220831', '101000', '96700', '96200', '101000', '712641', '70587675000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220901', '92400', '93900', '92300', '93900', '2337521', '216798395700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220901', '192000', '193000', '191000', '194500', '74003', '14221492000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220901', '79700', '80400', '79000', '80800', '307624', '24541039400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220901', '58400', '58700', '58300', '58900', '14905777', '872374620601', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220901', '97700', '99100', '97700', '99600', '683659', '67336305900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220902', '91700', '92700', '91600', '93300', '2036818', '187983351400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220902', '192000', '191500', '190000', '193000', '68309', '13108488000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220902', '78800', '79400', '78800', '80000', '266487', '21138380400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220902', '57500', '58300', '57500', '58600', '15040310', '872040367551', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220902', '97300', '98300', '97000', '99900', '464595', '45725534900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220905', '91100', '91800', '90400', '92400', '1706148', '155580540800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220905', '193000', '193500', '192000', '194500', '38217', '7382313000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220905', '79300', '79500', '78500', '80200', '102358', '8127477200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220905', '57100', '57400', '56800', '57800', '11425977', '653884056584', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220905', '97200', '97200', '96500', '98300', '330235', '32158218700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220906', '91800', '91900', '91100', '92900', '1389821', '127635016700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220906', '192500', '194000', '191000', '194000', '61568', '11825913320', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220906', '78600', '79300', '77300', '79300', '307439', '24054675256', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220906', '57100', '57200', '56900', '57600', '7503086', '429152038700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220906', '96800', '97300', '96100', '97500', '354834', '34312709200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220907', '90400', '91100', '89900', '91100', '2053413', '185294122800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220907', '192500', '192000', '190000', '194000', '59843', '11523390500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220907', '77600', '77200', '76500', '78000', '261922', '20207749100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220907', '56000', '56700', '55900', '56700', '17384854', '975695179700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220907', '94400', '96200', '93600', '96400', '654418', '61818221400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220908', '90400', '90500', '90000', '91000', '2012123', '181857897400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220908', '192000', '194500', '190500', '194500', '77693', '14902225500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220908', '78000', '78200', '76900', '78400', '235644', '18322844300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220908', '55600', '56200', '55600', '56400', '18000016', '1006366398000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220908', '93800', '95300', '93500', '95400', '598114', '56323431100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220913', '94800', '91700', '91700', '95200', '3288428', '307822983700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220913', '197500', '193500', '193000', '199000', '91304', '17916885500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220913', '81600', '80000', '79500', '81600', '322952', '26150358370', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220913', '58100', '57000', '56800', '58500', '17166581', '991015891355', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220913', '97900', '95700', '95100', '98200', '703205', '68337132700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220914', '93000', '91700', '91300', '93400', '2444928', '225687228700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220914', '192500', '194500', '192000', '197000', '63749', '12315872000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220914', '80700', '80200', '79200', '81100', '217207', '17425128800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220914', '56800', '56200', '56100', '57200', '12524961', '709906007000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220914', '94000', '93600', '93600', '94600', '721562', '67853878700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220915', '92000', '92900', '91500', '93000', '1755820', '161780125750', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220915', '193000', '193500', '192500', '195000', '37666', '7284434500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220915', '80700', '81100', '80500', '81700', '165173', '13391216300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220915', '56000', '57000', '56000', '57100', '11664819', '657641711500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220915', '92000', '94600', '92000', '94600', '672520', '62501867500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220916', '91200', '90900', '90000', '91400', '2243179', '202932180200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220916', '189500', '192000', '189000', '192500', '100732', '19141535500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220916', '80800', '79700', '79200', '80900', '176839', '14205408500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220916', '56200', '55600', '55500', '56400', '13456503', '752455682838', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220916', '90600', '91100', '90000', '91200', '769264', '69549053800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220920', '88000', '89000', '87500', '90600', '4259789', '377081451100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220920', '195000', '194500', '191500', '195500', '66085', '12833223000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220920', '80100', '81600', '79500', '81900', '167899', '13535580700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220920', '55800', '56400', '55800', '57000', '14041465', '788331519815', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220920', '89700', '91000', '89400', '91400', '540462', '48698785300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220921', '88000', '87500', '86300', '88500', '2954420', '258367974050', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220921', '192500', '194000', '192500', '195500', '59384', '11499837000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220921', '79800', '78900', '78800', '80500', '143128', '11438922600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220921', '55300', '55400', '55000', '55500', '11863700', '655017421100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220921', '88000', '90000', '87600', '90100', '669889', '59068741200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220922', '86000', '86300', '85900', '86900', '2204430', '190097055600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220922', '193000', '192500', '191500', '194000', '52725', '10167593500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220922', '79700', '79600', '78000', '79900', '172255', '13624078000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220922', '54400', '54600', '54300', '54700', '12786510', '696058101600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220922', '85300', '86100', '84500', '86500', '927127', '79128047300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220923', '83500', '85500', '83300', '86600', '3932242', '331082832100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220923', '196500', '194500', '192000', '196500', '82835', '16176907500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220923', '77600', '80500', '77600', '80500', '125363', '9814891000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220923', '54500', '54400', '54200', '54900', '10555964', '575503622100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220923', '84900', '85300', '84400', '86600', '725235', '61902775500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220926', '82500', '81500', '81500', '83200', '3281145', '270406192400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220926', '196000', '196000', '193000', '200000', '125950', '24734470000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220926', '76200', '76900', '75100', '77500', '218083', '16686628200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220926', '53900', '53700', '53600', '54200', '15008449', '807353273300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220926', '81800', '83500', '81600', '84400', '981155', '81220327300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220927', '82000', '82200', '80700', '82700', '2606333', '212481807800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220927', '192500', '197000', '189500', '197000', '120388', '23099247372', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220927', '76400', '76700', '74600', '76700', '305932', '23187132100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220927', '54200', '53800', '53500', '54200', '16631289', '897144417709', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220927', '81300', '81600', '80000', '81800', '960659', '77588783500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220928', '81200', '81900', '80500', '83500', '3068181', '250759550200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220928', '191000', '190000', '189000', '193000', '133331', '25440534000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220928', '73800', '75200', '73300', '75700', '313809', '23313275200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220928', '52900', '53900', '52500', '54400', '19991129', '1064665579214', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220928', '79300', '80700', '78300', '81800', '1063245', '84503588200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220929', '80800', '82500', '80500', '82900', '2064798', '168860306500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220929', '188500', '191000', '188000', '195500', '131520', '24999723677', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220929', '74500', '74700', '74500', '76200', '229115', '17249616300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220929', '52600', '53300', '52600', '53700', '13882080', '737730681500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220929', '78000', '80500', '77900', '80700', '788884', '62621198200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220930', '83100', '80900', '80400', '83900', '4711130', '389466671870', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220930', '184000', '184500', '184000', '188500', '180981', '33616288030', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220930', '74000', '75200', '73300', '75900', '438934', '32663424600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220930', '53100', '52300', '51800', '53600', '22503249', '1187343660500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20220930', '78600', '77200', '77200', '79900', '887235', '69767713900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221004', '86200', '85200', '85200', '87200', '4277404', '369025972586', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221004', '191000', '184500', '184500', '192500', '99012', '18754033500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221004', '76300', '74100', '73500', '76600', '181290', '13673883000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221004', '55200', '55300', '54500', '55400', '19148435', '1056852669700', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221004', '80700', '79800', '79800', '81000', '764137', '61465511600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221005', '89800', '90000', '88100', '90400', '5927256', '529349727543', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221005', '190000', '192000', '189500', '193500', '64433', '12308838000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221005', '75100', '77000', '74700', '77500', '225072', '16973822800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221005', '56000', '56900', '55400', '57200', '22458970', '1261934048318', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221005', '79200', '82200', '78600', '82400', '696257', '55552838100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221006', '89900', '90900', '89800', '92000', '3039698', '275694996677', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221006', '189500', '190500', '188500', '190500', '41321', '7836576500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221006', '75700', '75700', '74800', '76300', '146628', '11097725300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221006', '56300', '56700', '56300', '57300', '14944446', '848081763100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221006', '80600', '80000', '79400', '81400', '582507', '46991024300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221007', '91200', '89600', '87800', '91800', '3100583', '280262013777', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221007', '196000', '189000', '188000', '197000', '77252', '14969255500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221007', '76800', '74500', '74400', '76900', '318966', '24179869600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221007', '56200', '55900', '55200', '56900', '16886813', '949027146468', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221007', '81700', '79800', '79700', '82300', '676353', '54777230000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221011', '90200', '89700', '88000', '91200', '3840842', '344912165400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221011', '191500', '193500', '190500', '195500', '90296', '17421397500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221011', '75700', '76100', '73600', '76100', '231147', '17370120199', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221011', '55400', '54400', '54000', '55700', '21437877', '1172168853325', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221011', '78200', '79800', '77700', '79900', '827730', '64792927100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221012', '94000', '91000', '90900', '94000', '4648231', '430456023300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221012', '187500', '191000', '187000', '191500', '69539', '13123247500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221012', '78500', '75000', '74700', '78500', '281818', '21738959200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221012', '55800', '55700', '55200', '57000', '18408910', '1032656163200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221012', '79800', '78400', '77800', '80000', '594177', '47031571800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221013', '94900', '93400', '92800', '94900', '4390570', '413619747582', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221013', '188000', '188500', '188000', '190000', '70180', '13238874500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221013', '76600', '78100', '76600', '78200', '267565', '20644842790', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221013', '55200', '55400', '55200', '56100', '13784602', '765435187900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221013', '78100', '79600', '78100', '80700', '588068', '46387581600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221014', '95500', '96000', '94300', '96600', '3516437', '334828561464', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221014', '192500', '189000', '186500', '193500', '57783', '11083260250', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221014', '76900', '77200', '76500', '78500', '173437', '13427003100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221014', '56300', '56200', '55800', '56500', '12924326', '726962989400', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221014', '80700', '80000', '79700', '81500', '462737', '37347487200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221017', '95200', '94600', '94000', '95300', '2134558', '202198364600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221017', '194500', '192000', '191000', '195500', '50394', '9775222000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221017', '78900', '76800', '75700', '79000', '198896', '15496366200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221017', '56600', '55800', '55700', '57000', '13641878', '769638197200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221017', '81700', '79700', '79300', '81800', '394098', '31967315700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221018', '95800', '95900', '94600', '96200', '2618680', '249330141200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221018', '195500', '196500', '192500', '197000', '52679', '10260924500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221018', '78800', '80200', '78100', '80300', '180599', '14238018600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221018', '56500', '56700', '55800', '57100', '14820702', '835744764000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221018', '82800', '83100', '81300', '83300', '594072', '48967794500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221019', '92900', '94700', '92700', '94900', '3684934', '344615733005', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221019', '196500', '196000', '194000', '197000', '61095', '11942801500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221019', '79800', '78800', '78000', '79800', '172766', '13680052000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221019', '55800', '56700', '55700', '56900', '12660652', '710947532900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221019', '80600', '82000', '80400', '82600', '706403', '57464590300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221020', '90200', '91000', '89000', '91800', '4547678', '409443868100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221020', '198000', '194500', '194500', '198500', '99989', '19680778000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221020', '78800', '78700', '77900', '79400', '108415', '8534596800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221020', '55500', '55200', '55100', '56000', '17107653', '949265250905', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221020', '81200', '80300', '78800', '81400', '594436', '47562646600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221021', '90500', '89800', '89700', '91400', '2206754', '200305713600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221021', '196500', '196500', '195000', '198000', '89215', '17522578701', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221021', '77800', '78200', '77600', '79100', '147263', '11514679200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221021', '55900', '55100', '55100', '56300', '11456060', '640343092816', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221021', '80800', '80700', '80100', '81500', '347557', '28060104900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221024', '91800', '92200', '91200', '93100', '2165991', '199715515400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221024', '196000', '199000', '194500', '199000', '55530', '10890803500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221024', '78900', '79600', '77600', '80200', '188672', '14899031200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221024', '57500', '57000', '56700', '57500', '16944503', '968892104300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221024', '80900', '81700', '80400', '82300', '611218', '49720990600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221025', '93500', '91900', '91000', '94800', '2656194', '248751488800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221025', '194500', '196500', '193500', '196500', '39950', '7785186500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221025', '77300', '78800', '75600', '78800', '154434', '11886932600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221025', '57700', '57000', '57000', '58600', '17405678', '1009512119302', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221025', '80100', '80900', '79700', '81900', '552564', '44523524800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221026', '93900', '93300', '93200', '95500', '3310322', '313156219700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221026', '196500', '194000', '194000', '198000', '69733', '13651979500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221026', '77800', '76500', '75900', '77900', '192840', '14879193600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221026', '59400', '58000', '57700', '59600', '20824967', '1227076491560', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221026', '77800', '80100', '77300', '80200', '1247943', '97307683200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221027', '90000', '95100', '89800', '95100', '4550273', '417479104112', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221027', '196500', '198000', '195500', '198500', '94680', '18671041000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221027', '79500', '78900', '78000', '79800', '192517', '15245865100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221027', '59500', '59700', '58900', '60100', '21756712', '1296030977930', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221027', '80200', '78300', '78000', '80700', '920792', '73325894300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221028', '83400', '87100', '83000', '87800', '7748514', '658733740180', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221028', '204000', '197000', '197000', '204000', '99637', '20149586750', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221028', '79000', '79800', '78600', '80700', '192431', '15283895000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221028', '57300', '58900', '57200', '59200', '20924937', '1213293156195', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221028', '79900', '79800', '79600', '81200', '641547', '51444053500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221031', '82700', '84300', '82400', '85400', '6271574', '524946910700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221031', '200000', '202000', '198500', '204000', '99125', '19858920500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221031', '79200', '79700', '77500', '80000', '176937', '13916313900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221031', '59400', '58100', '58000', '59900', '18999514', '1126467842000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221031', '81600', '82000', '80500', '82000', '713095', '57979612800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221101', '83900', '82700', '81400', '83900', '3820185', '316973841612', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221101', '200500', '201000', '199500', '203000', '53580', '10752652000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221101', '81400', '78700', '78300', '81700', '167987', '13507334300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221101', '60000', '59900', '59500', '60300', '17201647', '1030380927406', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221101', '82600', '81500', '80800', '82900', '611191', '50029884400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221102', '84500', '84200', '83600', '85500', '2536363', '215008401184', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221102', '204000', '202000', '202000', '205000', '75040', '15302586000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221102', '81100', '81500', '79500', '81600', '201214', '16282745900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221102', '59600', '59700', '59300', '60000', '13202919', '787057605000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221102', '83700', '81700', '81500', '84000', '740355', '61476450300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221103', '82700', '82600', '81900', '83500', '2901380', '240312463400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221103', '201500', '202000', '199000', '204500', '75557', '15242000500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221103', '80800', '80100', '78700', '81500', '192666', '15479769600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221103', '59200', '58600', '58100', '59800', '17492162', '1029199659366', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221103', '82800', '81900', '81000', '83700', '643835', '52923292600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221104', '84500', '82700', '81700', '84600', '3032985', '252333968000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221104', '206000', '205500', '203500', '207000', '116752', '23999059304', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221104', '80600', '79900', '78900', '81200', '195786', '15672531600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221104', '59400', '59100', '58400', '59500', '12445841', '734525784600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221104', '88600', '82600', '82100', '90000', '2425215', '211138703600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221107', '86500', '85400', '85000', '86800', '2765284', '238246097100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221107', '204000', '206500', '202000', '207000', '67571', '13755611500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221107', '81600', '80600', '80000', '81600', '168226', '13627098400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221107', '60200', '59700', '59400', '60300', '12437246', '747350127100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221107', '90900', '89200', '87400', '91200', '1584070', '142788573900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221108', '87700', '87600', '87400', '89000', '2799575', '246892477700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221108', '202000', '206000', '199000', '207000', '98240', '19760809500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221108', '81800', '82400', '81000', '82500', '127288', '10376698700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221108', '61800', '60500', '60500', '61900', '18273898', '1123976801804', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221108', '91300', '90900', '90300', '92600', '994859', '90988527900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221109', '89200', '88100', '86600', '89200', '2619752', '231597454400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221109', '202500', '203500', '200000', '204000', '61594', '12430148500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221109', '82400', '82500', '81600', '82600', '147751', '12160519500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221109', '62000', '62000', '61300', '62200', '14045592', '869644724000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221109', '93200', '91600', '91200', '94100', '933729', '86740398600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221110', '89100', '89000', '88300', '90800', '3856811', '345585623552', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221110', '201000', '202500', '200000', '203000', '63714', '12807876000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221110', '82300', '82500', '81700', '82800', '202868', '16682346593', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221110', '60400', '61400', '60400', '61500', '21087633', '1283005045328', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221110', '91900', '92200', '91900', '94000', '803724', '74402493300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221111', '93500', '95200', '92500', '95300', '5002149', '468889493882', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221111', '200500', '202500', '198500', '203000', '106115', '21251676000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221111', '83400', '83500', '82900', '84000', '185331', '15474707600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221111', '62900', '63100', '62300', '63200', '20037163', '1257129641861', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221111', '94500', '95400', '93700', '95400', '891240', '84216089600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221114', '90900', '93900', '90900', '93900', '2483441', '227841495800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221114', '200000', '200000', '199000', '201000', '60639', '12118939000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221114', '83800', '83300', '83100', '84400', '140748', '11795414900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221114', '61900', '62900', '61700', '62900', '15973416', '993352234080', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221114', '95600', '94700', '94500', '96900', '888814', '85192133100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221115', '91600', '91300', '90400', '92100', '2460465', '224722829263', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221115', '195000', '201000', '194000', '201000', '121326', '23736751500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221115', '85100', '84400', '83800', '85300', '165939', '14074158800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221115', '62400', '62200', '61600', '62500', '12310986', '764117239743', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221115', '96600', '96100', '95800', '98800', '736227', '71495631100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221116', '91500', '92000', '90300', '92400', '2609199', '238677656700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221116', '193500', '194500', '191000', '195500', '169283', '32552120000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221116', '85900', '85100', '82800', '85900', '237822', '20196507500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221116', '62700', '62400', '61700', '62700', '12909260', '804219667250', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221116', '95600', '96900', '94700', '96900', '589204', '56264897800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221117', '87700', '82400', '82000', '88500', '3703870', '323608613600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221117', '193500', '193000', '192500', '195500', '57623', '11185035500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221117', '84000', '85900', '84000', '86100', '118196', '10005874400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221117', '61400', '62000', '61300', '62000', '13298296', '819118806800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221117', '92900', '95100', '92900', '95800', '523307', '49293504600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221118', '88400', '88700', '88100', '91500', '2981192', '267105986700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221118', '194000', '193500', '192500', '195000', '63974', '12387668500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221118', '83300', '83600', '83100', '84900', '119704', '10013258700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221118', '61800', '61800', '61400', '62400', '12236503', '757454905470', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221118', '92000', '93100', '91000', '94600', '864219', '79927868100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221121', '86300', '87600', '86100', '87700', '2111523', '182763598700', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221121', '195000', '195000', '193000', '197000', '61189', '11925660500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221121', '84900', '83600', '82300', '84900', '131899', '11100616500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221121', '61400', '61400', '60800', '61800', '9378097', '573783339409', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221121', '90100', '92500', '89300', '92500', '659130', '59441334400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221122', '85200', '85500', '84900', '86600', '1617131', '138259167400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221122', '197000', '194500', '194000', '197000', '54989', '10767906500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221122', '83600', '84800', '83300', '84900', '85197', '7131413300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221122', '60600', '60900', '60300', '61200', '9411289', '571460562800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221122', '89500', '90300', '89100', '90700', '392751', '35237051500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221123', '85200', '86100', '84900', '86700', '1480400', '126638514702', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221123', '196500', '195500', '195000', '197500', '52940', '10392121500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221123', '82900', '83100', '82500', '83900', '149309', '12371954900', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221123', '61000', '61200', '60700', '61300', '8765050', '534580211500', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221123', '90200', '90600', '90000', '92100', '454470', '41286789700', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221124', '86900', '86900', '85700', '87200', '2148255', '185804986018', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221124', '200500', '197500', '197000', '200500', '60397', '12040924500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221124', '84200', '83200', '83100', '84600', '182231', '15286379000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221124', '61400', '61200', '60900', '61700', '8125010', '497273294550', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221124', '90500', '90800', '90200', '91500', '302045', '27377467100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221125', '85100', '87200', '85100', '87300', '1439011', '123372985900', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221125', '203500', '199500', '199500', '203500', '76073', '15380921000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221125', '85000', '85000', '84400', '85200', '111240', '9446335700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221125', '61000', '61400', '60800', '61700', '6677933', '407953216200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221125', '89700', '91000', '89100', '91000', '309097', '27809691400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221128', '83100', '84100', '82900', '84200', '2471506', '205831023300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221128', '201000', '201000', '199500', '203500', '45841', '9211654500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221128', '84100', '84200', '83300', '84500', '123364', '10350606700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221128', '60100', '60500', '59800', '60500', '8589032', '515486605100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221128', '93200', '91600', '90700', '95200', '1494873', '139429643200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221129', '83700', '82700', '82100', '83800', '1501783', '125168335400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221129', '204500', '201500', '200000', '205500', '60060', '12230831500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221129', '84700', '84500', '83200', '84900', '95309', '8025406400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221129', '60600', '59900', '59800', '60600', '7014160', '422226001673', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221129', '93800', '93400', '91300', '94000', '623921', '57817970800', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221130', '85000', '83200', '83100', '85400', '3332708', '282110177452', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221130', '205500', '203500', '203500', '206000', '124510', '25555733500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221130', '84100', '83600', '83300', '84700', '1249488', '105038106250', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221130', '62200', '60400', '60200', '62200', '19768903', '1218354958444', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221130', '97600', '92900', '92600', '98300', '1734591', '168823002900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221201', '84700', '87300', '84600', '87300', '2878591', '247276783100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221201', '203500', '204000', '202000', '206000', '78408', '15946205000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221201', '84600', '84600', '84400', '85500', '137506', '11659230500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221201', '62600', '63100', '62300', '63200', '16631445', '1044546161950', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221201', '96200', '98900', '96100', '99000', '656245', '63891192400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221202', '81900', '83900', '81800', '83900', '4594058', '379357522580', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221202', '197000', '203000', '196500', '203000', '116690', '23163862500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221202', '82600', '83800', '82600', '84600', '173739', '14463996100', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221202', '60400', '62500', '60400', '62500', '15331184', '935960853120', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221202', '96600', '96400', '95400', '98500', '809770', '78870238200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221205', '81000', '81900', '80700', '82300', '3516456', '286141303500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221205', '197000', '198000', '195000', '199000', '94438', '18575282000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221205', '80800', '82300', '80100', '83100', '230041', '18626052000', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221205', '60300', '60900', '60000', '61100', '13767787', '832613739000', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221205', '96800', '97200', '95900', '97700', '462365', '44807656600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221206', '81000', '79900', '79800', '81100', '2781352', '223988414410', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221206', '198000', '197500', '195500', '199000', '96737', '19136004000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221206', '79800', '79800', '79700', '81200', '255791', '20527998400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221206', '59200', '59800', '59200', '60100', '13888300', '827339804388', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221206', '97200', '95900', '95500', '100500', '1145457', '112830384500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221207', '78900', '79900', '78700', '80700', '3589926', '284643046300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221207', '203000', '199500', '198000', '205000', '195673', '39621413500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221207', '78500', '79400', '78100', '79700', '151717', '11967574700', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221207', '58900', '58800', '58500', '59600', '12100662', '714083283900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221207', '90300', '95000', '89500', '95500', '1994747', '181856339600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221208', '78800', '78200', '78200', '79800', '3809847', '300349172100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221208', '204500', '203500', '202000', '205500', '133789', '27300498500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221208', '79600', '79200', '78400', '79700', '301999', '23993761200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221208', '59200', '58700', '58600', '59200', '12986815', '766212023592', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221208', '89800', '89600', '88800', '90700', '922814', '82727699500', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221209', '81500', '79400', '79300', '81500', '2985508', '240904110800', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221209', '207000', '205500', '202500', '207000', '79727', '16394979500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221209', '80400', '79800', '79000', '80800', '132583', '10639348500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221209', '60400', '59300', '59300', '60600', '10529632', '633777717900', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221209', '91000', '90500', '89700', '91200', '599973', '54277224400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221212', '81100', '80100', '79500', '81300', '1242007', '100209141200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221212', '209500', '207000', '205000', '210000', '54265', '11302759500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221212', '80500', '80900', '80000', '81000', '102793', '8265609585', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221212', '59500', '59900', '59400', '60000', '9036472', '538557972800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221212', '89800', '89800', '89500', '91300', '431521', '38875230600', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221213', '82300', '81300', '80500', '82700', '2761104', '225567255000', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221213', '212500', '211500', '209500', '214500', '125931', '26727137000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221213', '79400', '79900', '78700', '80500', '134976', '10706012500', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221213', '59700', '59600', '59400', '60300', '9040873', '539587782200', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221213', '88100', '90200', '87700', '90300', '588048', '52090123200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221214', '81800', '82100', '81100', '82600', '2357491', '192626410600', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221214', '212500', '214500', '210500', '214500', '91245', '19348663636', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221214', '81000', '80600', '80000', '81200', '169268', '13672617564', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221214', '60500', '59800', '59800', '60600', '8207485', '495209255105', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221214', '89900', '88800', '88500', '90100', '471240', '42268166300', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221215', '80200', '80600', '79900', '81100', '1713617', '137744973300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221215', '210500', '213000', '210000', '214500', '72891', '15403594000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221215', '80200', '81000', '80100', '81200', '119407', '9614927200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221215', '59300', '59800', '59300', '60200', '8716039', '519762171147', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221215', '88700', '89500', '88500', '89600', '244911', '21800614100', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221216', '78400', '77700', '77500', '79400', '3827227', '300436871699', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221216', '214000', '211500', '209000', '214000', '137373', '29293474160', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221216', '80000', '79800', '79200', '80500', '226500', '18109571200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221216', '59500', '58300', '58300', '59500', '13033596', '769867746731', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221216', '87200', '87000', '85800', '87900', '625891', '54486561900', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221219', '79000', '78300', '78300', '80100', '1813544', '143667793100', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221219', '214500', '212000', '212000', '215000', '81754', '17465753500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221219', '79600', '79000', '79000', '80500', '96882', '7721036800', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221219', '59500', '59500', '59100', '59900', '7696187', '457558919300', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221219', '86900', '87200', '86100', '87800', '432162', '37508008400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221220', '78300', '78200', '77800', '78900', '1361926', '106598485400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221220', '216000', '214500', '213000', '216000', '58861', '12653316500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221220', '78800', '79600', '78500', '79800', '87961', '6938676400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221220', '58600', '59000', '58500', '59100', '9284761', '545533294130', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221220', '86100', '86600', '85300', '86700', '340339', '29239086400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221221', '78000', '78500', '78000', '79200', '1513864', '118631570500', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221221', '215000', '216000', '212500', '216500', '38738', '8324789000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221221', '79000', '79800', '78800', '80400', '68650', '5454286300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221221', '58000', '58700', '58000', '59100', '10356971', '603985894600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221221', '85900', '86700', '85000', '86800', '255814', '21965720000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221222', '79200', '78500', '77900', '79300', '2061883', '162399818300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221222', '217500', '213500', '213500', '217500', '65676', '14172137000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221222', '80500', '78900', '78800', '81000', '168430', '13524883400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221222', '59100', '58100', '58100', '59100', '10720630', '628698962726', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221222', '90300', '86500', '86500', '91700', '1421236', '127752250000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221223', '77800', '77800', '77300', '78300', '1554446', '120957863400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221223', '216500', '217500', '215000', '218000', '29019', '6277099500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221223', '82100', '80500', '79800', '82400', '166471', '13538370400', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221223', '58100', '58200', '57700', '58400', '9829407', '570401785680', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221223', '90900', '88500', '88200', '92200', '946249', '85941256200', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221226', '77000', '77700', '76500', '77700', '1414717', '109027729300', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221226', '215000', '215000', '214500', '216500', '46968', '10105208000', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221226', '81400', '81500', '81000', '82200', '91985', '7499967300', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221226', '57900', '58000', '57700', '58100', '6756411', '391223170600', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221226', '88900', '90900', '88700', '91000', '466302', '41734112400', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221227', '77000', '77500', '76500', '77600', '1694225', '130482411200', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221227', '213000', '216000', '211500', '216000', '111521', '23785374500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221227', '81900', '82700', '80900', '83100', '152922', '12519050600', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221227', '58100', '58000', '57900', '58400', '10667027', '620410096800', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221227', '89700', '89500', '89100', '90400', '553886', '49735868000', '163647814', 4);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221228', '76000', '76800', '75400', '77000', '1891221', '143606781400', '728002365', 5);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221228', '206000', '202000', '199000', '206500', '106997', '21749961500', '47374837', 1);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221228', '79500', '80000', '79000', '80400', '171433', '13619555200', '157300993', 2);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221228', '56600', '57600', '56400', '57600', '14665410', '832919426100', '5969782550', 3);
INSERT INTO stock_price (base_date, close_price, open_price, low_price, high_price, trade_quantity, trade_amount,
                         issued_count, stock_id)
VALUES ('20221228', '89400', '89200', '88600', '90700', '490113', '44033831200', '163647814', 4);

