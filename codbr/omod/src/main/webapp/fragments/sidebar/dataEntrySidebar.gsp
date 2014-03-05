

					${ ui.includeFragment("codbr", "widget/panelMenu", [
						items: [
									[
										label: "Birth Informant Form",
										active: (section == "birth"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "birth" ])
									],
									[
										
										label: "Death Informant Form",
										active: (section == "death"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "death" ])
									],
																		[
										
										label: "Verbal Autopsy Questionnaire",
										active: (section == "verbal"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "verbal" ])
									],
																		[
										
										label: "Foetal Death Informant Form",
										active: (section == "foetal"),
										href: ui.pageLink("codbr", "dataEntryForms", [ section: "foetal" ])
									]
							
							
								]
					]) }
					
					