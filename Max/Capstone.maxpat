{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 37.0, 87.0, 963.0, 649.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"attr" : "octave",
					"id" : "obj-1",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.5, 232.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-12",
					"inletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "midi",
								"index" : -1,
								"tag" : "",
								"comment" : ""
							}
 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "list" ],
					"patching_rect" : [ 210.0, 323.0, 203.0, 22.0 ],
					"rnboattrcache" : 					{
						"patcher_obj-15/diff" : 						{
							"label" : "diff",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"slide" : 						{
							"label" : "slide",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"slide_time" : 						{
							"label" : "slide_time",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/damp" : 						{
							"label" : "damp",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"waveform" : 						{
							"label" : "waveform",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/decay" : 						{
							"label" : "decay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/mix" : 						{
							"label" : "mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"decay" : 						{
							"label" : "decay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"reverb_mix" : 						{
							"label" : "reverb_mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/size" : 						{
							"label" : "size",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"filter_mix" : 						{
							"label" : "filter_mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"attack" : 						{
							"label" : "attack",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"release" : 						{
							"label" : "release",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/jitter" : 						{
							"label" : "jitter",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"note" : 						{
							"label" : "note",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"noteon" : 						{
							"label" : "noteon",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"sustain" : 						{
							"label" : "sustain",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"filter_freq" : 						{
							"label" : "filter_freq",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.0.1",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~[1]",
							"parameter_shortname" : "rnbo~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "0f52c7df-d3ee-11ed-87df-9ae0409a180e"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__sps" : 							{
								"patcher_obj-15" : 								{
									"__sps" : 									{
										"CombR~" : 										{

										}
,
										"RoomB~" : 										{

										}
,
										"Mix~" : 										{

										}
,
										"Blur~" : 										{

										}
,
										"Shuffle~" : 										{

										}
,
										"CombL~" : 										{

										}
,
										"Damp~" : 										{

										}
,
										"RoomA~" : 										{

										}

									}
,
									"diff" : 									{
										"value" : 50.0
									}
,
									"damp" : 									{
										"value" : 50.0
									}
,
									"jitter" : 									{
										"value" : 50.0
									}
,
									"mix" : 									{
										"value" : 50.0
									}
,
									"size" : 									{
										"value" : 50.0
									}
,
									"decay" : 									{
										"value" : 50.0
									}

								}

							}
,
							"filter_freq" : 							{
								"value" : 15000.0
							}
,
							"sustain" : 							{
								"value" : 1.0
							}
,
							"decay" : 							{
								"value" : 1.0
							}
,
							"noteon" : 							{
								"value" : 0.0
							}
,
							"note" : 							{
								"value" : 59.0
							}
,
							"slide_time" : 							{
								"value" : 12.0
							}
,
							"slide" : 							{
								"value" : 1.0
							}
,
							"reverb_mix" : 							{
								"value" : 0.5
							}
,
							"__presetid" : "Synth.rnbopat",
							"waveform" : 							{
								"value" : 1.0
							}
,
							"release" : 							{
								"value" : 100.0
							}
,
							"filter_mix" : 							{
								"value" : 1.0
							}
,
							"attack" : 							{
								"value" : 50.0
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Synth.rnbopat",
									"origin" : "Synth.rnbopat",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__sps" : 										{
											"patcher_obj-15" : 											{
												"__sps" : 												{
													"CombR~" : 													{

													}
,
													"RoomB~" : 													{

													}
,
													"Mix~" : 													{

													}
,
													"Blur~" : 													{

													}
,
													"Shuffle~" : 													{

													}
,
													"CombL~" : 													{

													}
,
													"Damp~" : 													{

													}
,
													"RoomA~" : 													{

													}

												}
,
												"diff" : 												{
													"value" : 50.0
												}
,
												"damp" : 												{
													"value" : 50.0
												}
,
												"jitter" : 												{
													"value" : 50.0
												}
,
												"mix" : 												{
													"value" : 50.0
												}
,
												"size" : 												{
													"value" : 50.0
												}
,
												"decay" : 												{
													"value" : 50.0
												}

											}

										}
,
										"filter_freq" : 										{
											"value" : 15000.0
										}
,
										"sustain" : 										{
											"value" : 1.0
										}
,
										"decay" : 										{
											"value" : 1.0
										}
,
										"noteon" : 										{
											"value" : 0.0
										}
,
										"note" : 										{
											"value" : 59.0
										}
,
										"slide_time" : 										{
											"value" : 12.0
										}
,
										"slide" : 										{
											"value" : 1.0
										}
,
										"reverb_mix" : 										{
											"value" : 0.5
										}
,
										"__presetid" : "Synth.rnbopat",
										"waveform" : 										{
											"value" : 1.0
										}
,
										"release" : 										{
											"value" : 100.0
										}
,
										"filter_mix" : 										{
											"value" : 1.0
										}
,
										"attack" : 										{
											"value" : 50.0
										}

									}
,
									"fileref" : 									{
										"name" : "Synth.rnbopat",
										"filename" : "Synth.rnbopat.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "fb5d55713f75538f3dfded323640dab9"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @patchername Synth.rnbopat",
					"varname" : "rnbo~[1]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-11",
					"inletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "midi",
								"index" : -1,
								"tag" : "",
								"comment" : ""
							}
 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "list" ],
					"patching_rect" : [ 460.5, 325.0, 211.0, 22.0 ],
					"rnboattrcache" : 					{
						"octave" : 						{
							"label" : "octave",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/diff" : 						{
							"label" : "diff",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"playing" : 						{
							"label" : "playing",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/ratio" : 						{
							"label" : "ratio",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"key_offset" : 						{
							"label" : "key_offset",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/damp" : 						{
							"label" : "damp",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/release" : 						{
							"label" : "release",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/decay" : 						{
							"label" : "decay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/parallel_mix" : 						{
							"label" : "parallel_mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/mix" : 						{
							"label" : "mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chord_3" : 						{
							"label" : "chord_3",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/threshold" : 						{
							"label" : "threshold",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chord_4" : 						{
							"label" : "chord_4",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/size" : 						{
							"label" : "size",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/attack" : 						{
							"label" : "attack",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"tempo" : 						{
							"label" : "tempo",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"patcher_obj-15/jitter" : 						{
							"label" : "jitter",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chord_2" : 						{
							"label" : "chord_2",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"chord_1" : 						{
							"label" : "chord_1",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/input_gain" : 						{
							"label" : "input_gain",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.0.1",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~[2]",
							"parameter_shortname" : "rnbo~[2]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "113eb5af-d3ed-11ed-b5af-9ae0409a180e"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__sps" : 							{
								"p_obj-38" : [ 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
 ],
								"p_obj-10" : 								{

								}
,
								"p_obj-45" : 								{
									"__sps" : 									{
										"compressor" : 										{

										}
,
										"compressor[1]" : 										{

										}

									}
,
									"threshold" : 									{
										"value" : -30.0
									}
,
									"ratio" : 									{
										"value" : 3.0
									}
,
									"release" : 									{
										"value" : 50.0
									}
,
									"attack" : 									{
										"value" : 5.0
									}
,
									"parallel_mix" : 									{
										"value" : 1.0
									}
,
									"input_gain" : 									{
										"value" : 0.0
									}

								}
,
								"patcher_obj-15" : 								{
									"__sps" : 									{
										"CombR~" : 										{

										}
,
										"RoomB~" : 										{

										}
,
										"Mix~" : 										{

										}
,
										"Blur~" : 										{

										}
,
										"Shuffle~" : 										{

										}
,
										"CombL~" : 										{

										}
,
										"Damp~" : 										{

										}
,
										"RoomA~" : 										{

										}

									}
,
									"diff" : 									{
										"value" : 50.0
									}
,
									"damp" : 									{
										"value" : 50.0
									}
,
									"jitter" : 									{
										"value" : 50.0
									}
,
									"mix" : 									{
										"value" : 50.0
									}
,
									"size" : 									{
										"value" : 50.0
									}
,
									"decay" : 									{
										"value" : 50.0
									}

								}

							}
,
							"chord_3" : 							{
								"value" : 0.0
							}
,
							"chord_2" : 							{
								"value" : 0.0
							}
,
							"chord_1" : 							{
								"value" : 1.0
							}
,
							"octave" : 							{
								"value" : 4.0
							}
,
							"tempo" : 							{
								"value" : 110.0
							}
,
							"chord_4" : 							{
								"value" : 0.0
							}
,
							"__presetid" : "Chords.rnbopat",
							"key_offset" : 							{
								"value" : 0.0
							}
,
							"playing" : 							{
								"value" : 0.0
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Chords.rnbopat",
									"origin" : "Chords.rnbopat",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__sps" : 										{
											"p_obj-38" : [ 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
 ],
											"p_obj-10" : 											{

											}
,
											"p_obj-45" : 											{
												"__sps" : 												{
													"compressor" : 													{

													}
,
													"compressor[1]" : 													{

													}

												}
,
												"threshold" : 												{
													"value" : -30.0
												}
,
												"ratio" : 												{
													"value" : 3.0
												}
,
												"release" : 												{
													"value" : 50.0
												}
,
												"attack" : 												{
													"value" : 5.0
												}
,
												"parallel_mix" : 												{
													"value" : 1.0
												}
,
												"input_gain" : 												{
													"value" : 0.0
												}

											}
,
											"patcher_obj-15" : 											{
												"__sps" : 												{
													"CombR~" : 													{

													}
,
													"RoomB~" : 													{

													}
,
													"Mix~" : 													{

													}
,
													"Blur~" : 													{

													}
,
													"Shuffle~" : 													{

													}
,
													"CombL~" : 													{

													}
,
													"Damp~" : 													{

													}
,
													"RoomA~" : 													{

													}

												}
,
												"diff" : 												{
													"value" : 50.0
												}
,
												"damp" : 												{
													"value" : 50.0
												}
,
												"jitter" : 												{
													"value" : 50.0
												}
,
												"mix" : 												{
													"value" : 50.0
												}
,
												"size" : 												{
													"value" : 50.0
												}
,
												"decay" : 												{
													"value" : 50.0
												}

											}

										}
,
										"chord_3" : 										{
											"value" : 0.0
										}
,
										"chord_2" : 										{
											"value" : 0.0
										}
,
										"chord_1" : 										{
											"value" : 1.0
										}
,
										"octave" : 										{
											"value" : 4.0
										}
,
										"tempo" : 										{
											"value" : 110.0
										}
,
										"chord_4" : 										{
											"value" : 0.0
										}
,
										"__presetid" : "Chords.rnbopat",
										"key_offset" : 										{
											"value" : 0.0
										}
,
										"playing" : 										{
											"value" : 0.0
										}

									}
,
									"fileref" : 									{
										"name" : "Chords.rnbopat",
										"filename" : "Chords.rnbopat.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "bc60c945004bf945f44edffc830fd647"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @patchername Chords.rnbopat",
					"varname" : "rnbo~[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 535.0, 388.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "chord_1",
					"id" : "obj-8",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 536.0, 280.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "filter_freq",
					"id" : "obj-14",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.5, 71.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 102.0, 189.0, 55.0, 22.0 ],
					"text" : "noteon 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 189.0, 55.0, 22.0 ],
					"text" : "noteon 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 356.0, 188.5, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 154.5, 49.0, 22.0 ],
					"text" : "note $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 315.0, 82.5, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "attack",
					"id" : "obj-3",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.5, 98.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 286.0, 404.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 103.0, 93.0, 78.0, 93.0, 78.0, 270.0, 219.5, 270.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 103.0, 174.0, 219.5, 174.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "rnbo~[2]", "rnbo~[2]", 0 ],
			"obj-12" : [ "rnbo~[1]", "rnbo~[1]", 0 ],
			"obj-17" : [ "flonum[7]", "flonum[1]", 0 ],
			"obj-59" : [ "flonum[8]", "flonum[2]", 0 ],
			"obj-61" : [ "flonum[9]", "flonum[3]", 0 ],
			"obj-63" : [ "[3]", "[2]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Chords.rnbopat",
				"bootpath" : "~/Documents/GitHub/CMUCapstone/Max",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "Chords.rnbopat.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Synth.rnbopat",
				"bootpath" : "~/Documents/GitHub/CMUCapstone/Max",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
, 			{
				"name" : "Synth.rnbopat.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
