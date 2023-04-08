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
		"rect" : [ 807.0, 124.0, 640.0, 480.0 ],
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
					"attr" : "chord_1",
					"id" : "obj-3",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 97.0, 152.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-2",
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
					"patching_rect" : [ 58.0, 256.0, 211.0, 22.0 ],
					"rnboattrcache" : 					{
						"bitcrushing" : 						{
							"label" : "bitcrushing",
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
						"key_offset" : 						{
							"label" : "key_offset",
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
						"octave" : 						{
							"label" : "octave",
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
						"chord_1" : 						{
							"label" : "chord_1",
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
						"chord_3" : 						{
							"label" : "chord_3",
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
						"patcher_obj-15/jitter" : 						{
							"label" : "jitter",
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
						"patcher_obj-15/size" : 						{
							"label" : "size",
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
						"p_obj-45/release" : 						{
							"label" : "release",
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
						"p_obj-45/ratio" : 						{
							"label" : "ratio",
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
						"p_obj-45/input_gain" : 						{
							"label" : "input_gain",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-45/parallel_mix" : 						{
							"label" : "parallel_mix",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.0.1",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "9220f4e5-d57c-11ed-b4e5-9ae0409a180e"
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
								"p_obj-50" : 								{

								}
,
								"p_obj-43" : 								{

								}
,
								"p_obj-38" : [ 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
 ],
								"p_obj-37" : 								{

								}
,
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
							"key_offset" : 							{
								"value" : 0.0
							}
,
							"chord_2" : 							{
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
							"playing" : 							{
								"value" : 0.0
							}
,
							"chord_1" : 							{
								"value" : 1.0
							}
,
							"reverb_mix" : 							{
								"value" : 50.0
							}
,
							"bitcrushing" : 							{
								"value" : 0.0001
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
											"p_obj-50" : 											{

											}
,
											"p_obj-43" : 											{

											}
,
											"p_obj-38" : [ 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
 ],
											"p_obj-37" : 											{

											}
,
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
										"key_offset" : 										{
											"value" : 0.0
										}
,
										"chord_2" : 										{
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
										"playing" : 										{
											"value" : 0.0
										}
,
										"chord_1" : 										{
											"value" : 1.0
										}
,
										"reverb_mix" : 										{
											"value" : 50.0
										}
,
										"bitcrushing" : 										{
											"value" : 0.0001
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
					"varname" : "rnbo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 321.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-17" : [ "flonum[7]", "flonum[1]", 0 ],
			"obj-2" : [ "rnbo~", "rnbo~", 0 ],
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
 ],
		"autosave" : 0
	}

}
