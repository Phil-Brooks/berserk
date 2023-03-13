##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=test_berserk
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=D:/Github/berserk
ProjectPath            :=D:/Github/berserk
IntermediateDirectory  :=build-$(WorkspaceConfiguration)
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=phil
Date                   :=3/13/2023
CodeLitePath           :="C:/Program Files/CodeLite"
MakeDirCommand         :=mkdir
LinkerName             :=C:/msys64/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/msys64/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=D:/Github/berserk/build-$(WorkspaceConfiguration)/bin
OutputFile             :=build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=$(PreprocessorSwitch)VERSION=\"11.1\" $(PreprocessorSwitch)EVALFILE=\"networks/berserk-e3f526b26f50.nn\" 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/msys64/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)D:\Github\berserk\src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)check 
ArLibs                 :=  "check" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/msys64/mingw64/bin/ar.exe -r
CXX      := C:/msys64/mingw64/bin/g++.exe
CC       := C:/msys64/mingw64/bin/gcc.exe
CXXFLAGS :=   -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=   -O0 -gdwarf-2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/msys64/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/src_attacks.c$(ObjectSuffix) $(IntermediateDirectory)/src_bench.c$(ObjectSuffix) $(IntermediateDirectory)/src_movepick.c$(ObjectSuffix) $(IntermediateDirectory)/src_endgame.c$(ObjectSuffix) $(IntermediateDirectory)/src_move.c$(ObjectSuffix) $(IntermediateDirectory)/src_pyrrhic_tbprobe.c$(ObjectSuffix) $(IntermediateDirectory)/src_uci.c$(ObjectSuffix) $(IntermediateDirectory)/src_movegen.c$(ObjectSuffix) $(IntermediateDirectory)/src_search.c$(ObjectSuffix) $(IntermediateDirectory)/src_see.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_eval.c$(ObjectSuffix) $(IntermediateDirectory)/tests_check_bits.c$(ObjectSuffix) $(IntermediateDirectory)/src_util.c$(ObjectSuffix) $(IntermediateDirectory)/src_perft.c$(ObjectSuffix) $(IntermediateDirectory)/src_transposition.c$(ObjectSuffix) $(IntermediateDirectory)/src_history.c$(ObjectSuffix) $(IntermediateDirectory)/src_bits.c$(ObjectSuffix) $(IntermediateDirectory)/src_tb.c$(ObjectSuffix) $(IntermediateDirectory)/src_thread.c$(ObjectSuffix) $(IntermediateDirectory)/src_zobrist.c$(ObjectSuffix) \
	$(IntermediateDirectory)/src_random.c$(ObjectSuffix) $(IntermediateDirectory)/src_nn.c$(ObjectSuffix) $(IntermediateDirectory)/tests_check_attacks.c$(ObjectSuffix) $(IntermediateDirectory)/src_board.c$(ObjectSuffix) $(IntermediateDirectory)/tests_checks_board.c$(ObjectSuffix) $(IntermediateDirectory)/tests_test_berserk.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@if not exist "$(OutputDirectory)" $(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_attacks.c$(ObjectSuffix): src/attacks.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/attacks.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_attacks.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_attacks.c$(PreprocessSuffix): src/attacks.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_attacks.c$(PreprocessSuffix) src/attacks.c

$(IntermediateDirectory)/src_bench.c$(ObjectSuffix): src/bench.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/bench.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_bench.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_bench.c$(PreprocessSuffix): src/bench.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_bench.c$(PreprocessSuffix) src/bench.c

$(IntermediateDirectory)/src_movepick.c$(ObjectSuffix): src/movepick.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/movepick.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_movepick.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_movepick.c$(PreprocessSuffix): src/movepick.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_movepick.c$(PreprocessSuffix) src/movepick.c

$(IntermediateDirectory)/src_endgame.c$(ObjectSuffix): src/endgame.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/endgame.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_endgame.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_endgame.c$(PreprocessSuffix): src/endgame.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_endgame.c$(PreprocessSuffix) src/endgame.c

$(IntermediateDirectory)/src_move.c$(ObjectSuffix): src/move.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/move.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_move.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_move.c$(PreprocessSuffix): src/move.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_move.c$(PreprocessSuffix) src/move.c

$(IntermediateDirectory)/src_pyrrhic_tbprobe.c$(ObjectSuffix): src/pyrrhic/tbprobe.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/pyrrhic/tbprobe.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_pyrrhic_tbprobe.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_pyrrhic_tbprobe.c$(PreprocessSuffix): src/pyrrhic/tbprobe.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_pyrrhic_tbprobe.c$(PreprocessSuffix) src/pyrrhic/tbprobe.c

$(IntermediateDirectory)/src_uci.c$(ObjectSuffix): src/uci.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/uci.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_uci.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_uci.c$(PreprocessSuffix): src/uci.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_uci.c$(PreprocessSuffix) src/uci.c

$(IntermediateDirectory)/src_movegen.c$(ObjectSuffix): src/movegen.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/movegen.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_movegen.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_movegen.c$(PreprocessSuffix): src/movegen.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_movegen.c$(PreprocessSuffix) src/movegen.c

$(IntermediateDirectory)/src_search.c$(ObjectSuffix): src/search.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/search.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_search.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_search.c$(PreprocessSuffix): src/search.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_search.c$(PreprocessSuffix) src/search.c

$(IntermediateDirectory)/src_see.c$(ObjectSuffix): src/see.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/see.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_see.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_see.c$(PreprocessSuffix): src/see.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_see.c$(PreprocessSuffix) src/see.c

$(IntermediateDirectory)/src_eval.c$(ObjectSuffix): src/eval.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/eval.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_eval.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_eval.c$(PreprocessSuffix): src/eval.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_eval.c$(PreprocessSuffix) src/eval.c

$(IntermediateDirectory)/tests_check_bits.c$(ObjectSuffix): tests/check_bits.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/tests/check_bits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_check_bits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_check_bits.c$(PreprocessSuffix): tests/check_bits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_check_bits.c$(PreprocessSuffix) tests/check_bits.c

$(IntermediateDirectory)/src_util.c$(ObjectSuffix): src/util.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/util.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_util.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_util.c$(PreprocessSuffix): src/util.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_util.c$(PreprocessSuffix) src/util.c

$(IntermediateDirectory)/src_perft.c$(ObjectSuffix): src/perft.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/perft.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_perft.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_perft.c$(PreprocessSuffix): src/perft.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_perft.c$(PreprocessSuffix) src/perft.c

$(IntermediateDirectory)/src_transposition.c$(ObjectSuffix): src/transposition.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/transposition.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_transposition.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_transposition.c$(PreprocessSuffix): src/transposition.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_transposition.c$(PreprocessSuffix) src/transposition.c

$(IntermediateDirectory)/src_history.c$(ObjectSuffix): src/history.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/history.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_history.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_history.c$(PreprocessSuffix): src/history.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_history.c$(PreprocessSuffix) src/history.c

$(IntermediateDirectory)/src_bits.c$(ObjectSuffix): src/bits.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/bits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_bits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_bits.c$(PreprocessSuffix): src/bits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_bits.c$(PreprocessSuffix) src/bits.c

$(IntermediateDirectory)/src_tb.c$(ObjectSuffix): src/tb.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/tb.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tb.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tb.c$(PreprocessSuffix): src/tb.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tb.c$(PreprocessSuffix) src/tb.c

$(IntermediateDirectory)/src_thread.c$(ObjectSuffix): src/thread.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/thread.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread.c$(PreprocessSuffix): src/thread.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread.c$(PreprocessSuffix) src/thread.c

$(IntermediateDirectory)/src_zobrist.c$(ObjectSuffix): src/zobrist.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/zobrist.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_zobrist.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_zobrist.c$(PreprocessSuffix): src/zobrist.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_zobrist.c$(PreprocessSuffix) src/zobrist.c

$(IntermediateDirectory)/src_random.c$(ObjectSuffix): src/random.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/random.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_random.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_random.c$(PreprocessSuffix): src/random.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_random.c$(PreprocessSuffix) src/random.c

$(IntermediateDirectory)/src_nn.c$(ObjectSuffix): src/nn.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/nn.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_nn.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_nn.c$(PreprocessSuffix): src/nn.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_nn.c$(PreprocessSuffix) src/nn.c

$(IntermediateDirectory)/tests_check_attacks.c$(ObjectSuffix): tests/check_attacks.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/tests/check_attacks.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_check_attacks.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_check_attacks.c$(PreprocessSuffix): tests/check_attacks.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_check_attacks.c$(PreprocessSuffix) tests/check_attacks.c

$(IntermediateDirectory)/src_board.c$(ObjectSuffix): src/board.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/src/board.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_board.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_board.c$(PreprocessSuffix): src/board.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_board.c$(PreprocessSuffix) src/board.c

$(IntermediateDirectory)/tests_checks_board.c$(ObjectSuffix): tests/checks_board.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/tests/checks_board.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_checks_board.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_checks_board.c$(PreprocessSuffix): tests/checks_board.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_checks_board.c$(PreprocessSuffix) tests/checks_board.c

$(IntermediateDirectory)/tests_test_berserk.c$(ObjectSuffix): tests/test_berserk.c 
	$(CC) $(SourceSwitch) "D:/Github/berserk/tests/test_berserk.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_test_berserk.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_test_berserk.c$(PreprocessSuffix): tests/test_berserk.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_test_berserk.c$(PreprocessSuffix) tests/test_berserk.c

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


