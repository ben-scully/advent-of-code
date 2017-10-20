# spec/day3_spec.rb

require 'day3'

describe Day3 do
  subject(:day) { described_class }

  describe '#possible_triangles' do
    context 'when given text list: short' do
      let(:count) { 0 }
      let(:list) { '  541  588  421
      827  272  126' }
      let(:result) { 1 }

      it 'returns possible triangle count' do
        expect(day.possible_triangles(list)).to eql(result)
      end
    end

    context 'when given text list: long' do
      let(:count) { 0 }
      let(:list) { '  603  135  565
  335  363  180
  382  493  669
  545   81  843
  657  960  849
  823  909    9
  370  194  908' }
      let(:result) { 4 }

      it 'returns possible triangle count' do
        expect(day.possible_triangles(list)).to eql(result)
      end
    end

    context 'when given text list: long' do
      let(:count) { 0 }
      let(:list) { '  541  588  421
  827  272  126
  660  514  367
   39  703  839
  229  871    3
  237  956  841
  898  566  112
  101   79  112
  813  541  146
  603  135  565
  335  363  180
  382  493  669
  545   81  843
  657  960  849
  823  909    9
  370  194  908
  101  750  317
  295  671  968
  656  431   64
  634  291  245
  819  663  266
  504  662  829
  760  590  918
  733  859  258
  197  651  137
  357  799  638
  544  250  597
  604  654  431
   90  870  184
  609  535  604
  313  777  650
  421  320  741
  278  967  430
  299  722   23
  362  949  973
  353  258  989
  992  607  461
  850  264  490
  251  351  569
  810  320  116
  959  335  611
  450  242  624
  849   26  376
  419   42  222
  995   14  291
  711  174  615
   17  982  961
  722  895  941
  920  161  480
  905  246  531
  794  190  144
  317  318  633
  145  233  150
  445  534  519
  935  592  863
  784  260  844
  255  704  570
  521   57   61
  490  149  110
  163  144  142
  771  289   60
  914  233  541
  271   93  542
  411  640  812
  370  968   65
   61  960  781
  333   79  421
  269  190  428
  477  225   96
  610  641  265
  650  135  461
  145  759  380
  758  451  682
  524  125  861
  760  555  251
  360  219  567
  456  285  726
  510   98  927
  886  336  228
  356  916  323
  685  974  165
  253  532  207
  868  990  548
  811  803  525
  205  624  894
  707  512  328
  835  288  657
  496  776  413
  484  185   10
   33  832  403
  896  678  789
  745  595  773
  287  201  669
  150  189  513
  884   42  131
  934  214  407
  239  819  149
  145  582  334
  375  307  467
  680   59  850
  873  441  973
  243  393  256
  509  237  265
  302  550  334
  728  524  291
  130  986  333
   60  926  390
  133  653  692
  428  755  491
   24  476  659
  446  290  823
  906  703  410
  950  183  391
  199  735  250
  734  908  254
  635  373   34
  489  567  275
  587  746  463
  512  508  367
  104  971  568
  647  857  191
  605   20  775
  118  853  634
  432  559  322
  887  433  134
  660  332  336
  669  711  952
  762  713  610
  108  972  860
  732  743  562
  877  277  758
  225  590  380
  708   35  424
  989  425  439
  279  413  818
  107  422  634
  775  833  667
  755  755  279
  694  293    6
  156   75  649
  820  303  651
  448  934  587
   25  830  788
  473  192  932
  734  126  535
  940  215  513
  935  126  656
  428  905  789
  760  742  772
  510  523  633
  994  808  110
   93  740  100
  943   80  198
  329  888  532
   50  763  337
  320  673  741
  722   52  639
   18  130  566
  733  130  921
  280  586  642
  450  222  350
  178  427  325
  317  685  261
  744  261  105
  621  809  326
  740  532  605
  855  690  526
  441  301  185
  783  309  196
  525  272  334
  502   58  432
  980  150  121
  891    9  800
  286  143  705
  985  846  850
  362  696   70
  807  194  900
  912  193  448
  405  148  461
  677  261   30
  121  406  308
   34  206  451
  109  473  312
   46  726  695
  793  847   25
  834  160  708
  372  849  375
  744  799  423
  631  478  715
  346   82  545
  541  184   95
  492  228  588
  542  635   43
   75  347  439
  612  321  431
  719  526  847
  158  270  338
  813  482  560
  817  253  402
  899  630  887
  198  456  730
  235  286  344
  125  646  398
  204  375  401
   80  289  308
  295  664  862
  284  382  565
  816  130  651
  947  596  383
  131  611  723
  617  471  549
  663  282  697
  475  219  901
  535  829  434
  542  502  544
   23  649  110
  733  691  820
  684   21  821
  740  689    1
  224  249  280
  485  776  350
  682  971  182
  465   12  610
  294  296   13
  606  297  594
  337  104    3
  154  257  343
  352  171  349
  322  466  973
  189  173  854
  484  338  714
  194  194  551
  188  741  162
   14  696  663
  219  868   33
  224    4  446
  218  865  411
  392  536  574
  616  692  482
  746  592   94
  230   72  663
  291  487   99
  326  482  669
  131  265  155
   61  422  609
   80  552  641
  509  334  851
  475  211  911
  193  274  737
  128   15  973
  381   31  255
  413   21  812
  778  461    3
  514  307  697
  329  353  695
   48   90  212
  856  354  294
  863  265  360
  496  918  264
  377  889  164
  603  164  418
  159  701  199
  283  503  186
  127  658   54
  938  226  855
  189  533  465
  924  365  906
  322  422  291
  943  713  238
  714  508  138
  612  328   49
  962  877  685
  849  963  732
  154  278  428
   49  624  476
  111  518  753
  284  330  216
  716  689  290
  667  369  127
  719  728  175
  543  493  139
  759  408  286
  915  970  827
  482  289  787
  713  860  621
  836  286  729
  921  447  223
  665  655  706
  692  579  316
  772  679  289
  972  394   84
  221  675  877
  272  336  864
  439  684   69
  780  721  503
  225  587  125
  802  945  408
  280  237  682
  406  281  745
  176   60   71
  450  720  335
  656  293  383
  324  694  454
  547   57   51
  415  965  657
  311  936  687
  989  878  585
  156   72  165
  938  823  574
  626  968  146
  823  896  588
  294  236  597
  177  294  177
  287  351  480
  133  252  649
  706  319  175
   34  418  960
  722  583  906
  711  379  674
  529  574  882
  546  868  781
  577  875  687
  881  844  503
  926  247  190
  621  535  356
  294  105  257
  601  640  579
  573  142  519
  978  900  427
  693  823  350
  275  362  683
  137  291  741
  258  130  517
  838  686   12
   59  800  869
  790  188  881
  997  324  278
  582  338  887
  900   23  712
  288  619  402
  480  168  596
  292  505  505
  993   30  982
  636  335  892
  813  363  175
  230  248  620
  450  668  896
  460  736  874
  331  800  837
  844  805  734
  620   54  708
  726  820  592
  126   20  394
  728  820  219
  229   27   32
  164  569  939
  290  559  949
  325  360  794
  342  356  529
  203  627  691
   60  932  544
  767  865  563
  770  316  525
   99  756  674
  165  783  180
   72   27  846
  973  419  905
  104  364  294
  896  271  613
  294  222  416
  414  609  858
  481  429  478
  308  544  615
  624  139  560
  574  626  840
  998  338  328
  403  739  211
  625  472  120
  808  190   64
    5  202  558
  800   42  607
  874  801  675
   27  275  735
  898  927  280
  366  794  526
  233  529   13
  314  744  525
  842  530  617
  704  461  406
  281  946  841
  389  113  678
  545  652  410
  851  754  339
   14   56  706
  623  131  738
  636  127  931
  857  404  199
  682   25  387
  574  406  435
  508  528  307
  574  531  575
  223  433  827
   80  811  486
  710  642  904
  749  903  795
  920  205   60
  904  286  108
   96  428  120
  631  364  307
  599  169  180
  743  491  302
  133  939  980
  559  879  883
  642  605  918
  935  868  810
  539  860  357
  584  643  972
  831  562  800
  211  561  108
  953  928  802
  730  611   73
  483  373  139
  245  374  210
  493  582   77
  671  422  887
  568  458  930
  727  462  467
  663  603  657
  113  490  966
   95   26  415
   74   84  463
  117   78  276
   81  814  741
  407  852   36
  348   39  748
  144   43  826
  915  174  218
  775  148  820
  388  305  131
  458  135  195
  142  199   96
   79  223  625
  338   47  879
  295  217  575
  790   72  723
  713  736  711
  366  769  330
  302  642  718
  603  526  956
  450  181  663
  176  638  433
  902  801  408
  750  545   97
  398  366  271
  490  186  474
  801  290  324
  964  652  190
  937  593  344
  112  888  373
  940  377  623
  668  693  367
  623  889  870
  231  714  220
  694  535  837
  701  178  674
  620  887   23
  603  133  576
  224  983  601
    3  103  234
  867  232   33
  869  235  233
  448  909  262
  247  941  265
  464  909    4
   30  224   22
  154   99  764
  146  187  786
  789  347  512
  474  166  775
  583  253  359
  517  531  274
  154  414  735
  397  436  997
  864  822  104
  712  303  243
  310  652  217
  915  772  521
   25  780  616
  927  266  233
  899  327  372
  796  897  343
  741  794  508
  533  554  586
  470  656  176
  159  863  749
  680  644  839
  784  768  143
  152  451  939
  125  366   67
  779  902  437
  657  749  452
  325  759  722
  576  562  249
  776  467  790
  776  580  296
  705  264   84
  522  526  220
  879  278  392
  712  426  442
  288  589  363
   74   23  960
  203  873   22
  170  857  952
  155   46   56
  840  855  211
  740  816  188
  644  272  737
  623  362  311
  309  416  848
  895  807  900
  196  790  127
  871  912  916
  569  966  180
  461  223  854
  805  754  886
  828  353  453
  263  697  656
  595  541  418
  235  302  908
  883  446  723
  996  745  204
  457  813  925
  674  271  977
  463  769   97
  668  535  957
  609  720  417
  889  987  722
  649  852  317
  450   69  383
  499  915  226
  430  185  435
  475  840  992
  775  992  695
  334  725  933
  642  273  908
  682  693   55
   14  532  444
   63  192  736
   51  362  930
  306  301  474
  448  330  373
  691  115  425
  431  321  623
  265  881  504
  591  726  138
   58  930  870
  540  954  120
  496  157  772
  116  376  817
  943  249  828
  945  384  518
  777  573  897
  769  254  676
  290  691  734
  845  818  135
  860  802   75
  956  267  157
  964   92  268
  631  126  262
  571   59   14
   45  226  368
  144  878  306
  166  940  581
  803   30   24
   40  408  268
  782  423  267
  511  251  426
  680  962  467
  919  817  103
  558  609  789
  619    7  544
  122  611  384
  503  449   80
  373  982  264
  355  559  207
  911  801  105
  382  889  894
  762  707  989
  754   83  383
  890  198  327
  189  185  492
  844  820  374
  602  375   81
  399  871  374
  576  446  620
  696  249  930
  203  510  741
  485  264   79
  485  310  443
  163  340  469
  187   15  873
  309  506  141
  319  508  753
  202  457  500
  560  614  177
  377  909  534
   84   32  898
  261  761  825
  207  763   85
  649  544  761
  874  639  578
  760  555  435
  738  108  970
  711  458  986
   31  529   83
   98  374  182
  344  620  186
  421  340   29
  490  860  153
   97  793  609
  412   70  510
  855  542  805
  753  320  429
  130  245  621
  173  309   23
  741  513  716
  588  632  728
   53  928  543
  429  868  480
  455   90  465
  673  302  632
  238  255  483
  455   49  181
  325  935  570
  631  118  140
  579  987  515
  385  485  576
  466  497   16
   85   57  595
  967  801  619
  792  543  386
  842  480  332
  861  688  780
   88  209  741
  784  542  396
  696  800  232
  434  969  747
  709  342  679
  698  892  147
  526  474  726
  491  707  679
  241  197  440
  799  371  452
  832  425   98
  249  288  669
  657  909  768
  657  930  957
  751  211  846
    2  642  844
  748  718   11
  694  764  366
  332  231  268
  580  593  459
  921  656  751
  171  757  815
  828  555  167
   38  409  765
  244  455  834
  251  121  421
  659  271  526
  401  470  326
  354  241  846
  145  732  473
   53  261  972
  192  594  511
  480  337  383
   68  182  937
  472  478  653
   84  346  471
  707  458  137
  710  483  366
  954   52  537
  871  116  778
  670  104  912
  989  639  346
  139  444  640
  876  497  599
  313    8  980
  211  896  163
  127  894  850
  504  230   28
  385  710   79
  602  553   90
  981  628  560
  653  532  914
  452  275  432
  251  486  366
  521  257  539
  385  255  892
  552  405  361
  220  223  576
  608  368  309
  287   92  647
   33  346  483
  271  397  213
  834    8  851
  450  129   51
  477  139  847
  652  619  430
  525  117  446
  505  656  250
  387   34  263
  288  651  381
  450  665  145
  704  612  710
  875  974  543
  887  419  378
  328  768  521
  249   30  936
  318  762  906
  807  242   71
  794  413  374
  100  200  330
  317   65  889
  268  175  870
   69  215  691
  487  484  583
  368  497  505
  402   64  263
  290  420  846
  552  525  839
  300  497  485
  371  144  551
  590  391  504
  790  519  261
  533  533  519
  997  537  453
  869   26  534
  179  787  612
  470    6  559
  407  781  138
  239  498  490
  390  291  976
  604  227  556
   78  937  610
  513  171  447
  528  874  853
  308  925   92
  113  114  109
  286  820  150
   68   64  664
   29  952  167
   86  988  736
  530  285   93
  533  829  394
  654  917  322
   79  802  748
   79  226  476
   63  681  810
  699  249   37
  970  116   99
  332  355   71
  821  366  189
  653  531  751
  577  791  917
  841  104  877
  717  993  919
  342  969   58
  469  458  501
  190  446  208
  511  151  600
  635  875  369
  443  580  620
  235  761  902
  170  707  130
  404  586  241
  270  920  319
  280  340  126
  226  357  857
  432  401  816
  122  962  518
  903  139   38
  886  928  553
  884  636  522
  139  696  787
  936  455  611
  935  238  617
  879  265  631
  162  490  358
  447  520  570
  283  118  375
  432  411  768
  468  110   89
  642  116  624
  299    8  687
  426  802  789
  428  846  419
   21  750  486
  306  251  164
  824   54  144
  625  273  242
  625  507  776
  618  429  200
    7   81  763
  167  288   97
   60  239  173
  223  370  259
  719  160  934
  895  833   51
  961  693  984
  240  940  566
  240  869  930
  171  457  848
  105  693  480
  807  288  493
  839  883  538
   18  659  905
  883  665  543
  904  746  659
  225  119  529
  523  104  507
  447   57  109
  642  234  709
  319  554  656
  849  437  597
  648  645  614
  482  447  953
  891  321  883
  432  423  391
  295  684  242
  214  303  540
  562  256  130
  784  369  960
  414  510  954
  395  508  442
  790  536  212
  764  463  384
  515   37  205
  857  840  421
  778  876  558
  594  698  882
  274  425  847
  463  766  592
  825  456  751
   42  530  818
  800  812  238
  795  832  365
  879  814  318
  102  763  445
  916  349  731
  165  838  485
  757  973  270
  520  501  512
  682  157  411
  326  563  238
  881  173  303
  776  160  358
  810  284  156
  169  981  827
  132  886  635
  109  223  359
  785   28  287
    2  855  288
  782  854   23
  824  452  743
  425   79  768
  839  380  810
  859  212  356
  545  250  389
  341  270   90
  271   31  500
  958   38  718
  890    7  642
  437  869  750
  267  488  241
  481  517  781
  898  751  423
  363  244    7
  938  960  415
  714  297  426
  821  370  697
  454   77  498
  290  171  296
  257  509  698
  504  455  525
  619  771  981
  502  179  779
  554  746  322
  554  203  273
  576  557   27
  560  474  284
   76   85   88
  366  418  956
  426  487  928
  468  783  402
  547  167  678
  206  627  728
  467  191  185
  621  856  989
  618  794  862
  183  667  714
  582  707  993
  558   38  366
  324  111  131
  939  660  600
  863  576  550
  761  410  470
  414  273  362
  411  148  179
  532  795  514
  299  214  719
  296  871  522
  557  895   97
  489  873  782
  398   81  760
  493   75  328
  832  502   96
  482  505  247
  378  667   38
  463  434   78
  190  789   78
  798  510  131
  855  502  824
  698  775  920
  685  930  693
  920  723  923
  911  303  901
  668  574  538
    8  832  573
  670  629  626
  248  686   96
  434  131  743
  456  716  679
  294  807  107
  533  284  167
  765  615  130
  958  870  257
  910  169  662
  304  829  425
  600  235  796
  411  788  121
  243  840  791
  576  707  927
  613  307  633
   58  888  639
  634  707  253
  589  371  730
  193  956  813
  733  551  197
  155  973  175
  763  477  200
  102  984   83
  207  427  487
  135  868  546
  375  596  389
  329  405  299
  496  691  230
  266  975  261
  295  834  423
   80  140  572
  844  660  625
  772   44  369
  171  642  782
  352  889  273
  788  228  588
  737  852  753
  599  322  664
  545  296  545
  445  137  454
  218   69  171
  234  928  681
   67  991  829
  166  131  174
  442   11  769
  324  133  795
  736  757  408
   49  177  439
  719  923   31
  497  953  502
  664  684  447
  173  497  278
  954  888  913
  764  118  107
  601  850  972
  466   61   19
  969  499  418
  686  460  404
  327  329  165
  596  726  139
  811  596   75
  185  331  327
  216  409  168
  160  196  483
  264  533    1
  227  495  151
  226  708  155
  580  345  615
  586  900  862
   16  699  871
   38  594  382
  760  684  141
  770  455  511
  286  821  117
  582  919  393
  433  979  346
   75  939  949
  102  899  631
   98  305  567
  349  636  399
  627  981  520
  948  639  181
  753  150  521
  776  563  328
   89  613  658
  552  747  504
  131  449  276
  429  824  391
  283  542  472
  731  199  435
  456  707  160
  675  243  107
  547  911  854
  170  849  912
  497  869  377
  475  951  392
  458  273   24
  140  109  311
   38  276  388
  151  274  515
  100  704  858
  811  362   42
  745  777  817
  740  497   81
  424  270  266
  375  714  277
  602  668  923
   33  492  225
  603  953  772
  244   65  920
  247  659   29
  380  651  916
  674  529  388
  656  624  288
   53  112  270
  653  385  841
  736  945  725
  474  883  204
  995   21  127
  264  886  337
  873  870  237
  275   42  834
  188  202  872
  232  234  490
  688  384   29
  713  174  281
   90  533  299
  365  437  364
  345  940  484
  572  829  274
  556  319   28
  310  736   27
  758  729   19
  919  993  823
  942  949  411
  520  610  663
  376   24  997
  876  668  790
  762  682  677
  530  224  905
  480  624  428
  127  796  916
  777  114  158
   38  824  844
  771  821  741
  870  738  438
  615   13  677
  856  751  710
   68   89  515
  827  390  728
  889  356  930
  741  935  128
  858  515  386
  641  922  307
  714  383  434
  381  638  194
  710  290  388
  601  658  846
  610  559  781
   10  439  810
  114  699  864
  848  860  733
  949  736  155
  454  185  588
  188  877  350
  597  820  593
  240  725  614
   22  553  516
  239  428  318
  707  173  296
  649  766   51
  557  760  313
  913   62  485
  362   24  684
  805   55  212
  610  397  255
  331  680  376
  733  339  525
  777    7  686
  879  920  684
  495  926   25
  175  533  818
  678  810  343
  690  823  682
   52  185  180
  245  228  826
  299  102  977
  904  227  871
  867   20  889
  666  220  171
  696  805  515
  380  681  837
  738  243  339
  576  513  714
  898  609  914
  732  403  842
   65   29  417
  635  604  578
  588  610  339
  123  147  654
   65   80  660
  113  123   70
  530  767  183
  154  253   34
  377  994  217
  991  771  825
  557  595  223
  839  175  698
  680  414  626
   57  876  930
  675  735  408
  674  747  543
  547  749  929
  161   36  383
  286  951  733
  453  923  535
  480  575  661
  643  402  847
  630  953  624
   21  888  632
  136  814  335
  833  441  246
  937  388  147
  613  604  255
  668  625  410
  196  660  255
  117  333  779
  884  780  853
  912  919  303
   72  632  889
  929   27  933
  858  630  181
  647  439  851
  543  205  795
  270  431  312
  514  300  234
  455  290  594
  415   38  755
  392  749  796
  760  749  105
  368   10  783
  844  620  117
  514  323  208
  359  499  126
  641    9  263
  636  233  362
   61  245  109
  665  493  989
  494  711  865
  195  534  431
  200  651  721
   42  832  577
  178  262  431
  912  555  708
  891  524  503
  326  978  344
  984  371   44
  678  443  935
  655  654  905
  384  602  298
  828  716  458
  734  243  645
  200  588  627
  434  319  449
  541  648  208
  618  393  505
   49   51  527
  651  431   27
  794  116  242
  454   99  190
  614  169  369
  635  347  837
  533  718   55
  127  859  890
  809  535  303
  922  487  246
  199  619   78
  124  599  113
  951  248  547
  853  792  528
  639  270  510
  704  256   49
  192  143  521
  821    5  339
   14  299  920
  827  296  810
  396  630   54
  409  319  535
  582  850  483
  748  125  175
  876   51  329
  536  141  309
  944  357  396
  807  390  188
  889  577  474
  778  295  217
  752  299  217
   45  424  155
  506  283  758
  239  427  742
  740  162   16
  103  466  204
  656  718  395
  711  370  556
  915  240  466
  381  152  564
  698  136  118
  801  989  979
  404   20  740
  920  980  503
  426  449  642
  345  396   63
  314   52  601
  908  910  453
  639  943  749
  886  903  652
  505  623  394
  564  131  304
  250  542  119
  470  353  683
  207  558  664
  587  282  129
  368  850  270
  721  525  763
  857  515  929
  163  172  921
  813  379  716
  848  308  879
  231  683  824
  564  715  305
  589  903  967
  452  576  371
  120  820  215
  444  536  215
  897  300  478
  659   78  489
  688  259  807
  475  744  132
  430   47  721
   59  729  594
  123  255  846
  267  822  141
  283  982  920
  914  670  772
   31  803  762
  882  940   22
  196  889  610
  412  540  310
  473  467  599
  186  108  628
  749  266  559
  876  263  736
  741  794  155
  916  489  217
  244  683   93
  735   32  860
   79  469  774
  694  498  168
  875  971  968
   44  660  936
  891  909   68
  335  803  447
  592  440  192
  602  625  528
  964  299  913
  864  165  676
  870  211  388
  139  658  896
  161  710  828
  239  681  111
   71  727  871
  899  324  898
  876  969   47
  102  426  768
  645  531  788
  740  143   24
  126  687   39
  692  236  701
  680  904  696
   19  888  694
  315  353  457
  331  917  500
  407  291  968
  335  410  880
  558  515  406
  450  379  766
  500  149  685
   90  442  254
  590  573  807
  444  759  934
  547  983  229
  591    6  764
  457  631   82
  351  623  791
  697  240  380
  680  586  523
  142  542  564
  196  568  103
  671  672  588
  861  102  540
  297  946  373
  351  757  750
  573  445  421
  110  931  491
  244  667  417
  253  852  662
  133  258  885
  801  791  404
  840  867  890
  138  506  521
  786  496  173
  813  618  607
   56  189  183
  143  464  143
  194  568  251
  553  975   89
   40  956  336
  529  579  340
  517  876  870
  698  748  771
  513  191  220
  985  754  351
  297  869  155
  865  124  214
  349  627  737
  458  241  398
  383  417  996
  469   56  636
  281  379  667
  290  375  403
   61   54  128
   47  999  378
   16  996  484
  453  718  314
  324  643  418
  240  134  361
  890    9  340
  141   90  353
  868   94  582
  876  486  539
  231  662  114
  981  831  580
  609  264  435
  510  378  388
  125  321  143
  245  785  782
  171  368  238
   78  959  740
  174  264  202
  797  597  391
  832  496  415
  155  676  108
  648  947  171
  630  556  239
   75   61  727
  356  439  740
  363  455  230
  746   64  703
  699  487  178
  110  477  537
  347  640  201
  704  118  559
  857  719  453
  215  861  623
  665  768  311
  635   95  630
  418  547  323
  546  432  466
  635  256  163
   20  948  990
  164  982  281
  152  173  745
  688  580  193
  602  239  331
  875  390  312
  935  818  360
  163  996  778
  838  617  720
   69  195  442
  795  604  370
  809  647  473
  724  606  742
  709  743  861
  101  798  285
  656  333   91
  541  591   94
  185  327  149
  677   34  945
  543  170  473
  544  183  994
  578  574  351
  560  863  386
   62  613  114
   67  950  242
  303  606  171
  364  461  152
  592  209  521
  736  696  587
  935  534  284
  466  283  120
  301  458  742
  622  618  758
  332  643  475
  704  495  412
  386  920  113
  632  658  906
  405  917  669
  969  309  974
  762   93  102
  778  191  601
  897  117  681
  313  553  678
   60  703  504
  360  711  335
  240  415  317
   83  256  292
  182  622  509
  945  298  318
  812  581  650
  988  778  820
  744  692  625
  808  652   11
  156  285  613
  256   59  486
    9  493  462
  246  488  875
  476  284  372
   84  413  124
  508  626  464
  784  760  569
  275  439  701
  669  705  634
  571  647  526
  704  798  866
  141  939  981
  700  416  888
  677  579  687
  127  250  564
  302  288  392
  747  164  661
  876  145  974
  235  776  950
  698  425   25
  711  960  937
  587  155  168
  321   39  529
  843  172  601
  538  979   79
  209  788  585
  347  615  623
  605  703   53
  348  760  293
  825  194  336
  246  913  550
  571  745  359
  755  305  568
  137  502  612
   92  335  819
  185  176  244
  793  927  516
   90  917   10
  795  120  526
  376  200  481
  935  286  222
  745  116  477
  132  528  588
  812  162  598
  926  516   67
  137  753  113
  762  860  967
  894  663  993
  420  933  587
  822  614  897
  946  964  988
  731  224  756
  582  547  763
  273  333   12
  520  794  181
  461  498  846
  970  493  885
  866  400  229
  895  427  943
   80  303  913
  658  256  244
  481  981  281
  418  784  512
  785  739  556
  598   79  548
  905  798   18
   16  747  709
  604  422  109
  622  337  607
  235  664  940
  192  928  263
  427  669  747
  259  364  794
  312  606  973
   66  888  604
  504  601  128
  789  731  543
  883  385  584
  549  746  739
  243   30  974
  517  774  893
  479  361  847
  507  170  333
  264  387  860
  688  905  485
  302  677  369
  521  918  694
  306  435  744
  413  683  692
  662  504  471
  131  393  765
  277  613  541
  311  977  448
   77  714  200
  535  760  407
  567  910  371
  477  161  408
  175  224  834
  524  139  423
   53  197  234
  741   44  130
  747  220  343
  152  970  844
  517  178   54
  585  864  867
  812  201   16
  434  561   27
  617  372   23
  483  981  131
  635  157  182
  729  836  185
  638  762  607
   99  836   79
  714  939  613
   19  369  171
  168  424  312
  161  605  447
  294   24  766
  390   16  992
  188   31  532
  876  971  282
  893  980  505
   36   64  438
  820  658  792
  784  742  672
  544  951  415
  825  586  313
  115   47  298
  913  539  539
  399  383  574
    5  616  775
  401  574  837
  932  186  210
  314  140  652
  685   75  667
  683  303  224
  654  260  698
  269  338  909
  481  395  983
  467  651  337
  117  633  789
  960  676  402
  570  438  248
  537  686  151
  100  375  563
  894  196  476
  902  430  890
  832  161  413
  852  600  150
  655  713  277
  223  462  773
  579  348  861
  423  599  107
  820  655  872
  664  615  487
  175  158  793
  382  330  208
  226  433  657
  316  321  505
  332  718  917
  349  349  837
  220  449  309
  353   49  699
  745  314  852
  488  295  161
  390  277  913
  403  130  139
  194  244  874
  250  900  126
  234  800   17
  434  407  144
  502  334  514
  777  558  417
  581  435  444
  644  399  448
  351  674  351
  588  789  785
  418  283  642
  410  177  125
  110  116  747
  116  392  639
   22  250  219
  106  332  452
  882  523  655
  838  798  712
  970  438   99
  796  526  268
   18  569  586
  811  154  770
  225  483  638
  700  365  856
  628  121  280
  109  217   93
  610  365  262
  628  309  184
  716  382  175
   72  480  116
  762  852   94
  398  119  308
  595  323  380
  289  260  116
   73   26  147
  833  574  967
  790  595  890
  513  446  883
  657  520  594
  241  206  421
  193  383  465
  993  932  141
  972  902  489
   54  459  409
   67  134  614
   43  487  631
  578  500  479
  728  426  182
  441  202  325
  213  653  761
  311  499  642
  265  939  467
  457  609  840
   43  732  121
  487  317  958
  223  424  394
  489  429   40
  367   87  362
  420  217   87
  628  855  185
  212  679  162
  142  146  150
  770  529  597
  735  410  568
  457  497  182
  203  447   45
  266  299  200
  933  580   14
  345  883  795
  629  311  798
   81  312  674
   25   40  629
   58  343   43
  285  384  381
  365  202  764
  144  319  775
  236  237  727
  219  681  491
  374  901  870
  429   92   77
  561   73  648
  845   28  647
  764  497  183
  345  591   73
  824  804  193
   37  452  516
   12   25  584
   33  431  562
  283  354  846
  457  278   67
  698  201  894
   26  283  646
  658  597  344
  686  455  490
  473  265  560
  497  207  736
  140  298  623
  588  960  698
  591   32  249
    3  973  823
  265  151  789
  644  300   86
  552  366  744
  561  302  955
  547  867  988
  514  852  638
  682  499  416
  573  945  845
  535  635  658
  197  495  330
  333  483  690
  309   42  532
  489  158  372
  566  482  961
  109  341  783
  677  712  119
  531   37  232
  340  720  347
  913  134  690
  889  142  429
  206  232  821
  742  721  309
  461  532  188
  888  360  389
  671  950  531
  569  238  573
  205  837  461
  678  911  560
  537  935  552
  245  346  500
   84  225  546
  506  752  793
  499  609  383
  246  199  476
  197  634  991
  420  554  641
  238  720  826
  571  179  321
  547  902  890
  550    5  156
  424  149  875
  598  156  814
  724   95  766
   38  236  620
  742  238  162
  462  213  218
  283  599  565
  460  812  473
  331  733  798
   43   32  896
  286  711  908
  406  288  678
  515  881  387
  914  756  617
  300  178    3
  559  543  905
  485  486  909
  851  950  411
  360  806  419
  704  305  747
  730  206   61
  808  435  421
  588  349  416
  346  519  684
  718  771  253
  936  695  748
  966  123  346
  487  571  976
  717  673  998
  343  505  124
  109  169  918
  247  646  985
  850  995  239
  702  762  661
  733  677  459
   54  660   25
  625  661  192
  654   55  168
  227  364  350
  221  655  867
   52  413  767
  948  714  641
  111  412  816
  859  833  382
  250  719  818
  528  616   94
  386  203  781
  111  447  244
  316  383  677
  280  100  824
  452  322  649
  634  793  332
  625  665  349
   49  435  758
  320  580  776
  352  166  227
  691  801  376
   89  794   10
  758   19  387
   24  951  738
  584  127  681
  564  888  469
  421  813  308
  120  380  894
  539  675  908
  610  112  430
  605  196  435
  822   89   10
  912  760  205
  497  850  873
  472  876  699
  582  896  978
  727  238  974
  748  784  223
  961  411  965
  954  767   62
  148  855  987
  832  955  512
  399  748  110
  530  616  422
  525  708  992
  668  340  962
  833  804  120
  797  294  259
  693  181  688
  898  165  715
  675  424  309
  596   76  129
  519  470  267
  377  926  744
  551   66  834
  560  976  275
  475  551   92
  195  468  205
  446  358  122
  366  338  734
  972  710  760
  914  818   24
  532  324  333
   75  917  277
  605  656  369
  727  548  469
   58   84  437
  674  524   68
  467  452  792
  841  519  660
  922  861  946
  682  753  605
  777  419  758
  536  434  269
  291  624  351
  372  151  768
   86  579  751
  252  720  474
  976  739  949
  878   23  771
  320  259  561
  536  887  709
  491  828  668
  949  488  913
  973   40  122
  868  492  808
  261  938  614
   42  327  679
  296  806  227
  251  681  523
  555  933  543
  802  343   31
  739  605  863
  581  553  337
  198  880  885
  139  466  781
  479  471  785
  565   29   36
  962  283  367
  756  881  927
  761  837  936
  413  712  289
  118  620   91
  297  732  256
  733  895  489
  163   12  540
  655  898  321
  241  509  371
  916  272  653
  688  281  810
  103  215  281
  987   92  408
  957  170  454
  466   88  293
   40  813  103
  436  766  254' }
      let(:result) { 993 }

      it 'returns possible triangle count' do
        expect(day.possible_triangles(list)).to eql(result)
      end
    end
  end

  describe '#possible_triangles_count' do
    context 'short list' do
      let(:count) { 0 }
      let(:data) { '  541  588  421
      827  272  126' }
      let(:list) { day.sorted_sides(data) }
      let(:result) { 1 }

      it 'returns possible triangle count' do
        expect(day.possible_triangles_count(list, count)).to eql(result)
      end
    end

    context 'longer list' do
      let(:count) { 0 }
      let(:data) { '  603  135  565
  335  363  180
  382  493  669
  545   81  843
  657  960  849
  823  909    9
  370  194  908' }
      let(:list) { day.sorted_sides(data) }
      let(:result) { 4 }

      it 'returns possible triangle count' do
        expect(day.possible_triangles_count(list, count)).to eql(result)
      end
    end
  end

  describe '#possible_triangle?' do
    context 'valid triangle' do
      let(:sides) { [5,10,14] }

      it 'returns if possible triangle' do
        expect(day.possible_triangle?(sides)).to be true
      end
    end

    context 'invalid triangle' do
      let(:sides) { [5,10,16] }

      it 'returns if possible triangle' do
        expect(day.possible_triangle?(sides)).to be false
      end
    end
  end

  describe '#sorted_sides' do
    context 'short list' do
      let(:list) { '  541  588  421
      827  272  126' }
      let(:result) { [[421, 541, 588], [126, 272, 827]] }

      it 'returns if possible triangle' do
        expect(day.sorted_sides(list)).to eql(result)
      end
    end

    context 'longer list' do
      let(:list) { '  603  135  565
  335  363  180
  382  493  669
  545   81  843
  657  960  849
  823  909    9
  370  194  908' }
      let(:result) { [[135, 565, 603], [180, 335, 363], [382, 493, 669], [81, 545, 843], [657, 849, 960], [9, 823, 909], [194, 370, 908]] }

      it 'returns if possible triangle' do
        expect(day.sorted_sides(list)).to eql(result)
      end
    end
  end
end
