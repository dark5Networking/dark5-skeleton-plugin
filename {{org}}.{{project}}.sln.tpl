Microsoft Visual Studio Solution File, Format Version 12.00
# Visual Studio 15
VisualStudioVersion = 15.0.27703.2042
MinimumVisualStudioVersion = 10.0.40219.1
Project("{2150E333-8FDC-42A3-9474-1A3956D46DE8}") = "Solution Items", "Solution Items", "{{projectguid}}"
	ProjectSection(SolutionItems) = preProject
		dark5.yml = dark5.yml
	EndProjectSection
EndProject{{ if client }}
Project("{{solutionguid}}") = "{{project}}.Client", "{{project}}.Client\{{project}}.Client.csproj", "{{clientprojectguid}}"
EndProject{{ end }}{{ if server }}
Project("{{solutionguid}}") = "{{project}}.Server", "{{project}}.Server\{{project}}.Server.csproj", "{{serverprojectguid}}"
EndProject{{ end }}{{ if shared }}
Project("{{solutionguid}}") = "{{project}}.Shared", "{{project}}.Shared\{{project}}.Shared.csproj", "{{sharedprojectguid}}"
EndProject{{ end }}
Global
	GlobalSection(SolutionConfigurationPlatforms) = preSolution
		Debug|Any CPU = Debug|Any CPU
		Release|Any CPU = Release|Any CPU
	EndGlobalSection
	GlobalSection(ProjectConfigurationPlatforms) = postSolution{{ if client }}
		{{clientprojectguid}}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{{clientprojectguid}}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{{clientprojectguid}}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{{clientprojectguid}}.Release|Any CPU.Build.0 = Release|Any CPU{{ end }}{{ if server }}
		{{serverprojectguid}}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{{serverprojectguid}}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{{serverprojectguid}}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{{serverprojectguid}}.Release|Any CPU.Build.0 = Release|Any CPU{{ end }}{{ if shared }}
		{{sharedprojectguid}}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{{sharedprojectguid}}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{{sharedprojectguid}}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{{sharedprojectguid}}.Release|Any CPU.Build.0 = Release|Any CPU{{ end }}
	EndGlobalSection
EndGlobal
