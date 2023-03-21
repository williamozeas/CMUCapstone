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
		"rect" : [ -1731.0, -76.0, 963.0, 649.0 ],
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
					"patching_rect" : [ 404.0, 274.0, 32.0, 22.0 ],
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
					"patching_rect" : [ 334.0, 240.0, 49.0, 22.0 ],
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
					"patching_rect" : [ 363.0, 168.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "waveform",
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
					"patching_rect" : [ 285.0, 336.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
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
					"patching_rect" : [ 259.0, 285.0, 74.0, 22.0 ],
					"rnboattrcache" : 					{
						"patcher_obj-15/diff" : 						{
							"label" : "diff",
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
						"waveform" : 						{
							"label" : "waveform",
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
						"noteon" : 						{
							"label" : "noteon",
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
						"patcher_obj-15/mix" : 						{
							"label" : "mix",
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
						"patcher_obj-15/decay" : 						{
							"label" : "decay",
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
						"filter_mix" : 						{
							"label" : "filter_mix",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"filter_freq" : 						{
							"label" : "filter_freq",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"reverb_mix" : 						{
							"label" : "reverb_mix",
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
						"uuid" : "76b264c7-a66b-11ed-a4c7-9ae0409a180e"
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
							"noteon" : 							{
								"value" : 0.0
							}
,
							"slide" : 							{
								"value" : 1.0
							}
,
							"filter_freq" : 							{
								"value" : 0.0
							}
,
							"reverb_mix" : 							{
								"value" : 0.5
							}
,
							"waveform" : 							{
								"value" : 3.0
							}
,
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
										"value" : 2.0
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
							"note" : 							{
								"value" : 59.0
							}
,
							"filter_mix" : 							{
								"value" : 1.0
							}
,
							"__presetid" : "Synth"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Synth",
									"origin" : "Synth",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 1,
									"snapshot" : 									{
										"noteon" : 										{
											"value" : 0.0
										}
,
										"slide" : 										{
											"value" : 1.0
										}
,
										"filter_freq" : 										{
											"value" : 0.0
										}
,
										"reverb_mix" : 										{
											"value" : 0.5
										}
,
										"waveform" : 										{
											"value" : 3.0
										}
,
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
													"value" : 2.0
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
										"note" : 										{
											"value" : 59.0
										}
,
										"filter_mix" : 										{
											"value" : 1.0
										}
,
										"__presetid" : "Synth"
									}
,
									"fileref" : 									{
										"name" : "Synth",
										"filename" : "Synth.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "193452619a5d4c5a0184313a37389649"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ Synth",
					"varname" : "rnbo~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 103.0, 93.0, 78.0, 93.0, 78.0, 270.0, 268.5, 270.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 103.0, 174.0, 268.5, 174.0 ],
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
					"destination" : [ "obj-1", 0 ],
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
 ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
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
				"name" : "Synth.maxsnap",
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
 ],
		"autosave" : 0
	}

}
