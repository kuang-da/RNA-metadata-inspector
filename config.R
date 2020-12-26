##########################
# UI Parameters
##########################
ACCEPT_FILE_TYPES = c("text/tsv",
                      "text/tab-separated-values,text/plain",
                      ".tsv",
                      ".xls")

L1_SELECT_LIST = list("Experiment Info" = 1, "STAR" = 2, "VERSE" = 3,
                      "BLAST" = 4, "Trim" = 5, "Experiment Metadata" = 6)

l2_list = list("Parameters" = 1,"Output" = 2)
L2_SELECT_LIST = list("Experiment Info" = list("Experiment Info" = 1),
                      "STAR" = l2_list,
                      "VERSE" = l2_list,
                      "BLAST" = l2_list, 
                      "Trim" = l2_list,
                      "Experiment Metadata" = list("Experiment Metadata" = 1)
                      )

L3_SELECT_LIST = list("Experiment Info" = list("Experiment Info" = 1),
                      "STAR" = list("Statistics" = 1),
                      "VERSE" = list("Level 1 & 2 Exons" = 1,
                                     "Level 3 Exons" = 2,
                                     "Antisense Exons" = 3,
                                     "Level 1 & 2 Introns" = 4,
                                     "Level 3 Introns" = 5,
                                     "Antisense Introns" = 6,
                                     "Mitochondrial" = 7,
                                     "Antisense Mitochondrial" = 8,
                                     "Intergenic" = 9,
                                     "LINEs & SINEs" = 10,
                                     "Miss" = 11,
                                     "Percentage" = 12),
                      "BLAST" = list("BLAST" = 1),
                      "Trim" = list("Statistics" = 1,
                                    "remove-N’s"= 2,
                                    "-r3G trimming" = 3,
                                    "Default contaminants" = 4,
                                    "-rAT trimming" = 5),
                      "Experiment Metadata" = list("Experiment Metadata" = 1)
                      )
##########################
# Table Parameters
##########################
L1_COLUMN_LIST = list("Experiment Info" = seq(2, 61), 
                      "STAR" = seq(62, 76),
                      "VERSE" = seq(77, 148),
                      "BLAST" = seq(149, 169), 
                      "Trim" = seq(170, 201), 
                      "Experiment Metadata" = seq(202, 214)
                      )

L2_COLUMN_LIST = list("Experiment Info" = list(),
                      "STAR" = list("Parameters" = seq(62, 67), "Output" = seq(68, 76)),
                      "VERSE" = list("Parameters" = seq(77, 83), "Output" = seq(84, 148)),
                      "BLAST" = list("Parameters" = seq(149, 154), "Output" = seq(155, 169)),
                      "Trim"= list("Parameters" = seq(170, 176), "Output" = seq(177, 201)),
                      "Experiment Metadata" = list()
                      )

L3_COLUMN_LIST = list("Experiment Info" = list(),
                      "STAR" = list("Statistics" = seq(68, 76)),
                      "VERSE" = list("Level 1 & 2 Exons" = seq(84, 89),
                                     "Level 3 Exons" = seq(90, 94),
                                     "Antisense Exons" = seq(95, 101),
                                     "Level 1 & 2 Introns" = seq(102, 106),
                                     "Level 3 Introns" = seq(107, 111),
                                     "Antisense Introns" = seq(112, 116),
                                     "Mitochondrial" = seq(117, 121),
                                     "Antisense Mitochondrial" = seq(122, 126),
                                     "Intergenic" = seq(127, 131),
                                     "LINEs & SINEs" = seq(132, 136),
                                     "Miss" = seq(137, 138),
                                     "Percentage" = seq(139, 148)),
                      "BLAST" = list(),
                      "Trim" = list("Statistics" = seq(177, 183),
                                    "remove-N’s"= seq(184, 187),
                                    "-r3G trimming" = seq(188, 189),
                                    "Default contaminants" = seq(190, 197),
                                    "-rAT trimming" = seq(198, 201)),
                      "Experiment Metadata" = list()
)