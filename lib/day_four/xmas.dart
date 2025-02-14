import 'package:advent_of_code_2024/utils.dart';

class Xmas {
  final String value =
      """SMASMXMXSAMXSASXXAMXMAXXXMSXMASAMAXMASXSMXXMXMXAMXXXSAMXMXMSMXSXMASMSAAAXMASXMSMMSSXMMSSMXSMXXXMAXMMMXMXAMXMXAXMASXMMMXAXMAMSAMXAMMAAXXMASAM
AMASAASAMAMSAMMXMSXSAXSMSXMAMXSXMASAAAAAXSXMXMASXMMMSXSMMXMAXAAASMMAMXXMSAMXMASXAAXAXAXSAMXMSMSMSXSAMMSMXXAXMSMSMSASXXXXMXSASXSXSXSSXSAMXSAX
MSAMMMMASAMMAMXSXXAMMMXAAXMSAMXAMASMMMSMMSAMXXAMAAXASMMAASXMSMSMMSMXMAXMXMAMMAMMMMSMMSMXSAMXAAAAXASASAAAMSMXAMAAASAMAASXSAMAMXMAMAMAASAMAXMM
XMASMXSMMXXSAMXSMMMMXAMXMSAXAXSXMASXAXAMASAMXMSSSMMXSAMSMMAXXAMXAXMASMASASMMSAMAAMAXAMMAXMMSMSMXMASAMMMSMAAMSMSMXXAMMMMAAAMSASMSMAMXMXAMMSMS
MMAAAAMXMAMAAXAMMAAXSXSAMXMXMMMAMMXXXMXMASAMXMAMAAXXMMMAASXMMAMMSSSMMXASASAAAXSMXSAMSAMASAMXAMMXSXMAMXXXMMXMXAXXMSAMXAMXMXMXASAMXXMXMSXMXAAA
AMSSMMSAASASXMSXSXSMMMSAXXXASXSMMSXMMSSMASAMAMASMMMXSASMMMAXMMXAMXAAXMXSAMMMXMSXMAXXMAMASMMAMXMASASXMMMMAXAASMMAXMAMSASMMMMMMMXMASXXMAMXSMSM
SAAAAAXMSMMASAAXSAMMSAXMASXMAAAXAMAMXAAMXMAXXSASAAAASXSSSXXXXMMSSSSMMAXMAMXSAAMMXSSMMXMMMAXAMXMASAMMSAAMMXMXAASXMXMXSAXMMAMSSSXSAMXMMAXXAAAX
AAMMMMSMAAASMMMMSAMAAMXMAMAAMSMMMSAMMXSMSSSMAXAXXMMMSXMAXXSMSMAXMAAAASXSXMAXMSMAAMAMSMMAMMXMXXSAMXMAMMXSAXSXSMMMMMSAMXMASASAAAAMAXAMSASXSMSM
MMXXXXAXMMMMAMMMSAMXXXXMAMXMXXXAXXASXMMAMAXMSMSMXXXXXASMMMSAAXSSMSMMSMMMMMMSXXAMXSAMAASMSSXSAAMXMMMMSMXMASMAMXMAAXMASMMASXSMMMMSSSMMSXMAAAXX
XSXMASXXXXSMSMAASXMSMMMSMSXSSSMSSSMAAXMAMXMXMAXSSXSMSXMSAAMMMSXMAXXMAAAXMAMMAXMXMAASMXMAAAAAMSMAMAAAAMXMXMMAMASMSSSMMMMASASXXXXAXXMASAMMMMSA
XMAXAMAMSAMAXSMMMAAAAAAAXAAAAAXAXAMXXMSXMAAAMMMAMASAMXASMSMXMXAMAMAMASXSXSAXMXXMAMMMMSMMMMMMSMMMSSSSSMMSAMSMSXSAMMAMAMSASMSSSMMMSXMASMMXSAMM
SSSMASASMAMAMAMMMMMXXMXMMMXMXMMMSXMSXXMASXXXSAMAMMMSXMAMAAMASMMMAXXMMXMMAMXAMMMMSMMSAMXXXXAXMAXMAAMAAAAMXXAAAXMXMXAMMMMXMXMASASMMMMXSXXAMASX
AAASMMXSMSMXSAMXASXASMSSXSAXASAMAAXAAMSMXSAASXSAXXSMMSSMMMMMXAXSXSAMXAXMXMSAMAAAAAAMASAXASAMMMMMMSMSMMMSMSMSMMMSMMMXMMSSMSSMSXMASAMXMMMMXXMX
MXMMSAMXAXAASXSSMSAMXAAMASASXMASMSMMMAXSAMXMSXSAXXASAAMAMAASMMMAASAMSMMSAMXAXSMSSSMSMMMSMAMMASAASXXXXAAAAAXXXAAASASXSAAAXAAXXAXMAMMAMAAXSSSM
XASXSXSMMMMMMXXAXXMAMSMMAMMMMSMMXAXXXMXMMMMXXXMASXAMMXSMMSMSASXSMSAMXAAXAXSSMMMAXAAMMAXMXAXMXSSSSXAXSMXSXMXSMMXXXXMAMMSMMSSMXXXMAXSASMMMAAAX
MMSASASAXMXSMMMSXSAMMMAMXMMAXAXSXMMSSMAXXAMXMXXAAMMMMXAAAMXSAMAAXSASXMMSSMMMAXMXSMMMSXSXMASXAXXXXXMAXMAXASASXAMSMSMSMMXXXMXXAMMSAMSASMMSMSMM
SXMAMMMXMAAXAAMAAMMXAMAMSMXAMMXMAAAAAMAMSMSAMXMAMMAAASMMMSMXASAMXSXMASAAAAAMSMSAAXSAMMSXMAXMMMMSMMXASXMSAMAXMXXAAMAMXMMMMMMMXSAAAMMMMXXAAAXX
MXMAMMSSSMXMSMSMMMXMMSAMXMASMXAXSMMSSMMMAAXXMAMMXSMSMMAXSXASMMXXXMMSMMSSSMMSMAXMASMAMAXAMMSMMAAAAXMASAASAMSMAMSMXMAMAMASMXAMMMMMMMXMASXMSMMX
SASASXAAMMAAMAMMMMAAASMMSMAMAXMMMAMAMAXSMSMSSMSAAXAXASAMXAMXAAXXMAXSAAXXAAXSMSMXMXMMMSSMMMAMMSMSSMMMMMMMAAXMAMASASASASMSXMAXAXXXSSSMASAXXASX
SASASMMSMMMSMAMAASXSMXMASMAMSMMASAMAXXXMAXXAAXMASAMXAMMXMMMSXMXSXSASMMSMSSMMAAMXMASXAAAMAXXSAXMMXMXMAASXMMMXXSASMSXSASXMXMASXMMAMAMMASMMSAMS
MAMAMAAMAXSXXXMSMSAMXSMASMMXAAAAXASXSSMSASMMSMXMAMSMXXAXAXAXAMAMXMMMXAXAAAAMXMMMMAMMMMMSASMMMSAMMMAMXSXXAAAMXMMSASAMXMAXAXAAAXAAMAMMASAXMMMA
MAMAMMMSAMMAMXMMAMMMMAMASASMXMMSMMMMMXAMASXMAMAMXAXXSXMMSMMSSMASXMMXMASMMSMMMXXAAMSAMAMMASAAASAMASAMMXXSSMMXAAMMMMXMASXMXSXASXSXSASMASMMAAAM
SAMAXAAXXAMAMAAMAMSAMXSXMAMAXSAMASXAAMXMAMASASMSMMAXMASAAXMAXSAMAMSAAMSMMXAXAAXSSMSMXAMMAXMMMSXSMSAASAAMXMASXSMASXMMXASMASMMAAAASMAMXMASXMXX
SAMXSMSMXMMASMSSMMSASMXAMSMSMMASAMXMSMSMSSMMASAXAMAMXASMSXMXMMMSSMSXSAMAMSMMMSMMAAXASMSSMAXAAMMMMMMMSAMSAMXSAAMAMAMXMASXAMASMSMMMSAMXSASMSMS
SAMAXAAXMMSMMXAXMASAMMSXMAAMAMXMXMMSAMXAAMXMXMMSXMSSMMSXMASXMAXAMXMMMMSAMAXASMASMMXXXAAAMMXMMSAAMAMMMAXMAMXXXMMMXAMXMASMAMMMAAXAXMXSMXAMASAM
SAMXSMMSAMASXMASMMSXSXXAXMSMXXMXXAXSASMMMSAMASXMMXXAAASAAXXAXSMMMAAXAAMASXSSMSAMXSMSMMSMAAMXMSMSSMSAMXMSSMSSMMXSMMSXMMSXSSXMSMSMMMSSXMSMAMAM
XMMXSAMXXSAXMAXMXXMASMSMMXXMMMXMSXAXXMXMASASASASASMSMMSMMMMSMMAXSSXMASXXMASAMMSSXMAXAAAXMMSAAMAXAXSXMAMXAAAMAAAXASXXSMMAMSAMMAXXAXAXXXAMMMAM
SXSASXMMXMASXSSMSMMAMAXMAXSAAMSXSMSMSSXMXSAMASAMSAXXSAMXAAAMASXMMMASAMXAXMMXMAXMAMMMMMMXSASMSMSMAMMXSAMSMMMSSMSMMMAXXAMMMMMMMMMSXMASMMMMMSMM
AAMXSAMXMASAAAAAAXMSXSXMASXMASAAXAAAXMASAMXMMMMMMMSMMSSSSSMSAMMAAXMMMMSMMXMAMSSSMMSSSSXAMASXAXAASXMASAXXXAXMMAXXXAMMSXMAAXMAXSAAXSAMAAXAAAAA
MXMXSMMASXXMMSMMSSXXAMXXSXXXSAMXMSMSMSSMMSASMMSAMXSAAAMAMAXMASMSMMSAAMAAXMXAMAAMXAAXAXMXSXMXMSMSMAMMSMMMMMMSMSMXSASMXMSMSMSASMMSMMASXMSMSMSM
XMXMXXMMSAXXMXAAXXAMAMMXMAXMASXAXMMXAMAAMSMSAAMASAXMMSMAMMMMMMAXMASMMSSSMSSSSMMMMMSSMXAAMMMAXXXAXMMAXMASMMMAAAAASAMXAXXMAAMXMXXXASAMMMXAMXMA
MXAAMMSAMXMSSXMMSMXMAMAMMMMXMAMXMXAMAMXMMXASXMMMMMXMMMMXSXAAXMMMSAMAMXMAMAAMSAMXAMMAXAMSMAXMMMSXSXMASMMMAASMSMMMMAMSSXMMSSMSMSXSMMMSAXMAMASM
MSSMSAAAXXXAAXSAMXSMSXSAASXMXSSSMMSSXMASXMXMMSXSASXSAAXSMMSXSAXAMAMMMXMAMMXMSXMSSSXXMMXAMSMMAASAAXSASAAMSMMAXXAAMXMXMASAMXAXXAMSAMXSXXMAMMMM
AAAAMAMSMXMMMMXAMXMAAAASMSAMSXAASMAMASASAMXSAXAMMSASMSMAAAAASAMXXAMAAMXSSXSMXSMAMMMSMSSSMXMXAXMSMAMASMMXAAMXMSSMSAMMSAMASMMMMMMSAMAMSXSAMXAX
MMSMXSMMXMXSAMXAMSMMMSMMXMAMXMXMMMXXAMAXASASMMAMMMXMAMXXMMSXXASMSMSMMSAAXAXAAXMAMAMAAMAMAXXXXXMAXSMAMASMSMMXXMASMXMAMMSSMXASXXAXAMSSSXMASMXS
XXXMAMXXXXAAAMXAXXAMAXAXXSMMMSAMXMMMSSMSMMASXMMSAMAMMSXMAMXMSMMAAAXAAMMMMMMMMMMMSASMSMAMMMMXSASMSMMXSAMMXAAMSSXMMMSAMXMAMMMXXMASXMXAMASMXMAM
ASAMXSXXMMMSAMSSSSXMASAMMAAAAMASAMAAMAMAAMAMAXAXASXSAAASXMAXAAMSMMMMMMXSASAXXAAAMXMMAMASXAAASAMXSAAAMAMAXMMMAAASXAXASASAMASMMMMAMSMMMAAAAMAM
MMASAMXMMSAXMMSAAMAMASASXAMMXSAMAXMXSASMSMMSMMSSMMAMMSXMASXSMSXAMAAMXSMMASXSSMSMSASMXSAMXMMXMXMAMMMXSAMSSMXAMSXMASMXMASASASASXAAXXAMMMXSMSAX
XSXMASMSAMXSASMXMMXMXSAMASMSXMASMMSASMSAMAXAXXXAAMAMXMXMASAMXMXMSSMSAAAMMMMMAAAASAMXAMASMXMMXSMSSXMXMAMXAXMSXMASAXSAMAMMMMSAMXSSSSXMAMMMAXXX
MMXAXXXMASAMXAXMASMXAMAMXMASXMASAMMAMAMAMXSASMSMMSMSAMASAMMMASMMAMAMXSMMAAAMMMMMMAMXMSAMMASXAXAXXMSASAMMMMAAASMMMASXMMMSAXXXMAMMAAMSASMMMMSA
XMASXMSSMMMSSXSASAMMMSAMMMAMXMAXXMXMMSMSMXMAMAXXAAXMASMMMSMSASASASASAMASXXMSSMXSSXMAMMXXSASMXMMMMMSASASASMSMXMXXMASAMSASMSMXMXSMMMMMASXAAAAM
AMAMAXMASMXAAASMMMAAXMASAMAMXSSMSSSXXXAASAMAMXMMSSXMAMAAAAAMAXMSASMSASXMMXSAMXAXMASXSAMMMASASAMAAMMAMASASAXXMMXXMASMMMASAAAAXXMXMASAMXMXMAXX
XMASAMSMMSMMMXMASXSSMMMSXMASAAAAAAMMMSSMSMSSSMMAMXAXSXSMSSSMSSXMXMASAMMMXMMASMMXSAMAMMSXMXMMXAXSMSMXMMMMMXMAMAMMAMXXAMXMXMSASXSASMXMSSXMXSXM
XMASAMXXAXXXMASMMAMAMSAMMSMMMSMMMSXSAAAXXAAXAMMASMSMMAMMAAAAAMXMXMXMMMSMAASXMASXMMSXXAAAAAMXSSMXAMMMXXSXSASXMAXMAMXSXSXSAMXAAASAXXAMAAASAMAS
XMASMMXMASXSXXXXMXMAMMASAAAAAAXXXXAMMSSMMMMSSMSXXXAAMXMXMSMMMSAMXSAAAAAMAMXAXSMAAAMAMXSXSMSAAMAMAMSMSASXSMSAMASMASXAMMMMAMMMMMMSMXMMMSMMASAM
SMASMSMSMMAAMSSMMAMAXSSMMSSMMXMXAMXMXMAMXAMXAASAMSSSMSMSXMMSAMXSASMSMSSSSSSSMMSSMMMSAMXAXAMMSMXMAMAAMXMAMMSAMASMAMXMASASMMSASXAAXASAMAXMXMMS
XMASMXAAXMMMMAAASMSMMMAAAMAXXASMSAASMXASMSSSMMMAMXAMAAAAASAMMSMMASAMXMAXMAAXMXAXXMAMXMMMMMMMAMAMXXMMMAMAMASAMXMMAMAMXMAXXAMASMSSSXSASASMXMAS
SMMXMMMMXXXAMMMMMXAMASMMMSAMMAMAASASAMASAXMAMAXAMMMMSMMMMMAMXAAMXMAMAMXSMMMMSMMMSMMSASAMASMSASASXMSASASASMSAMSMSMSMSMMSMSSMAMAAAMXSAMASAXMAS
SASMMAAXXMMSSSXSXSXSASASAMAXMAMXMMXXMXMMMMXXSXSSMSXMASXMXXMMMSSSMSSXMSAMXSMAAAAASAASASMSASXSASXSAMSAMAXASXSMMXAAAAAAXXAAAAMSMMMSAMMSMAMMMMAS
SAMXSMSMMAXAAMAMAMXMASAMXMAXMAMSXSMMSMXAMXMASAAMASASASXMSMASXAMAAXMASMASAMSSMSMMMSMMMMXMASAXAXASAMMMMSMMMASAMXMMXMXAMSMMMSAMXMAXMXAXMXSXXXAX
MAMMMMMAMSMMSMXMAMSMMMMMSSMMSAMSAXAAAAMMMXAAMMMMAMAMXMXAAXAXMXSMMMMXMAXMXMAXAXMAMASXXXXMAMMMXMMMAMXAAXAMMXMSMAMSASASAMASAMAXXAMXSMMXSAMXAMXM
MAMASASAMMAXAAASAMAXXAMAMAMAMXSMSMMSSSSMMSSSMAXMMSAXAAMSMSMXAMXXAAXSMSSSMSASXMAXSASXMXMAMASMAAXSSMMMXSSMXMMAMMSMAMAMXSAMASASXXMAXAMAMASAXXSA
XAXXSASXMXSSMSMSASMSSMMMSAMMSMMAXXMAMMAAAAXAXSMSASASXXAAAAMASXMSMSMSAAAAAMAMXSMAMAMASMMMSMASXSAXAAXSXAAXXXMAMMAMAMSMAMASAMAXMAMMSSMXSAMXSXSS
SSXMMXMAMAXXMAMXAMAAXXAAXMXMAMMAMXMXSXSMMSSMMMAMXMAXASMMSMSAMAMXAMXMMMMMMMAMMAMXMAMMMAAAAMMXMMMSMSMSMMMMMMSSSSXXAXXMAMAMAMAMMAMXAAMMMASXMAMA
AAASXSMXMSSMSSSMSMSMSSMSMSASAXMXSMSMSAXXXMMXAMMMASMMAMSMAMMXSMMMSMASXSXAXXASXXXXSASXSSMSSSXAXAAXXXAXXMAAXXAMXAMSSSXSXSSSXMAMMAXMXSMAMMMXMAMM
MSMMAAXSXMAAAAAXAAXAXXAAAXAXXMMMMAAAMAMSMMMSXSXSAAAMXAXXASAMXAAAAAMAAMMSSSMMMXAMMAAAMMMXAAMMSMMSSMMMXXXSSMSSMXMAXMMMMMXAASASXSMSXMMSMASMSSSS
MAAMMMMMASMMMSAMMSMMMMMMSMAMSASXSSMMMAMAXAAMASMMSSXMMMMSXSXMXSMSSMMMMMMAMAASAMXXAMMXMAMSXMXXAXAAXAXMMSAAXAMXMMMSSMAMAMSSMMXSAMASAMAASMMAAAAM
SMXXAXXSAMMSAXMAXAAMASXAMMAASASAMASXSXMSSXXXAMMAMXMXAMMAMXASAMXAAASASAMMXSMMMAXAXSSXSMMMAXASXSMSSSMAAMMMMSMAXXMMAMXXAMAAASASAMAMAMSMSXMMMMXM
MXMSSSXMASAMAXXSSSSMAXMASXXXMAMXMAXMASAAMMSMSSSMXSASXSXSXSAMXSMXMMSASASXMAXXXSXSXMMMMMASMMASAXXXAXMMMSAXAXSXMMXSAMXXSXMSXMASAMXSAMXXSAMXSXMS
XAAMAMASAMMSXMSXMAMMSSXSAMXMMAMMMSSXASMMMAXAAAAAASMSXSAMASXMAXMAMXMAMAMMAMMMMMMXXMAAASASASAMMAMMXMXMMSXMAMAXAAAMXXMAMMXMXXASAMAXAMXSSXMAMASA
SMMSAMMMMSXXAXXAMAMMAMMMSMSASXMXAMSMXSAASMMMMSMMMSAXXMAMAMAMSSSXSAMXMSMMAXAXAAAXAAXXXSASMMASXAXSMSAAXMAXSAMXXSXSAMSAMASXSMAMMMAMSMMMSXMMSMMM
XXAXMXMAMMMSMMSMMXXMAMAXAMAXMMSMMSMSMMXMMAAAAXXAXMMMASAMASXMXAAAAMMSMMASASAXSMSSMMSMAMXMASMMMMSMASXSMSXMAMXMAMAMAXMASXMASMSMSMSMXASAMXXMAAXX
XMMSMASMMAMAAAXMXSMSSSMSXSMSMAAMXAAAXSMMSSMMSSSMXAXMAXASXSASMXMAMXAAASAMASMMXMMAAAAMXMASAMAAXXAMXMMXXSMMAMAMAMAMMMMAMAMAMMAAAAAAXXMAMASXSMMM
MAMAMMXAXSMSXMXSAAAXXAAMXMXMMSXMMMXMSAAAXAAXAXMASASMMSAMASAMXMSAXXSMMMXMAMMAMSSSMSSSXMAMMSMMXMAMAAXMASAXMSXXXSXSXMXSSMMSSSMSMSMSMXSAMXXAAXAA
AASASAMSMXAXXMAMXMMMSMMMXSAMMXAAXMAXMXMMSMMMMSMMAAMAXMAMMMMMAASXSXMMAAXMXMMMSAAXAXXMAMXSMXMAASXMSSMSXSAMMMMAMXASAMAMAMXAAAAMAAAXAMXXMXMSMSXS
SASASMAAAMMMMMASMSSMXAAXAXAMASMMMSMSAMSMSXMAXAMXMMMXAXAMXASXMMXXMASAMXASAXXXMMSMMMSMMMXSXAMMMSAAAAXAAMMXAAXSSMXSAMXSAMMMSMMMXMMSMXMASMAMAMXX
XXMAMXSMMMXMXAMSXAAASMMSMSSMXSMSMXSAMXAAXASXSMSAMXMASMMSSXSXSAXXMAMXMXMMAMSAXAAAMMSAMSASMXMMXSMMMMAMXMMSMSMASAASAMXMAMXXMXAXXXMAAASAMMAMAXAM
SXSAMXXMXSASASMMMSMMXAXAXAAMXSAAXSAMSSMSMMMMAMSASXSXMAAAMAMASXXMMSSMMSXSAMXMMSXSAASMMAAMAXMXAMXXSXSXSXAXAMMAMXAXMSXSMXSAMSMSXXXMSMMASMXSSMXS
AAMAMSXMASASMMAAAAMXMSASMSXMAMSMSXXXAMAMASAMAMSAMXMMSMMMXAMMMMMXAAAAASAMSSXMMMAXMAMXXMMMSMSAXMASMAMASMSMXMMXSMXMAMAMAASAMXAAAMSAMXMAMXXXMMMM
MSMSMSAMMMMMXSXMSASXMMAXAXXMAXAXAMXMMSAMMMAXXMMSMMSAXXXXSMSMASMAMSXMMMAMASASAMAMXMMSMSXXAAASMXMAMMMAMAMXMXMAXAAAMMSMMMSAMXXMMMAASMSXSXSAXAAA
XAAXAXXMXAXSAMXAMXMMAMAMAMMSMSMMAAMMXMXSXSSMXMAXXAMMSXMAXSAMXSASMXXMASMMASMMAXMAXMAAAMSSMXMAMXSSMMMMMMMASAMXXSSSMAAAMAMMSSXMASXSMAAAMAAMSSSM
SXSMXSAXSMMMASMXASAXAMAMXMAAMXXXAXAAXMSXMAXAAMMMMSSXSAAMXSMSMXAXAMXSASMMXSXXXMMASMSMXSASXXSXSASAAMXMAXSASXMAMXAMMMSMMAMSAMMSASMAXMMAMAMMAAMX
XAXASAXAMXAMAMXMSXMSXMXSSMSSSXXMASXXSXSAAAMMMSAAAAXMSASXMMXSAMMMSMMXXXXSMMASMSMAMAAAXMMMMXAAMXSSMMSMMMMASMXXSMASXXAXSXSMAMAMAMMAMXXMAXSMMSMA
MSMMMMXMSSXSAXXMMAMAMSAMXAAMAMXAAXMAMAXMMSXSASMMMMSAMAXMAMAXXSMAXSAMXMMSAMXMAAMAXXMSMSXMXSMXMAMAMAMASXMXMAXMXXXMASXMXMAXMMSMSXMMSXMXMMXAAMXM
AXMMSXMMXAMSAMXAXAMAMSAMMMMXAXMSSMMAMXMXXXMMASAMXAAMMAMAXMXSAMMSSMSSXMASAMXXSMMMSMAMXAAXAXXXSXSAMXXAMAXXMSSMAMMMMMMMXXXXMXXAMMXMSXMAXAXMMSXX
SXMASAAMMSMMASXSSXMXXXAMAAMMSSMAXAMMSMXMXMAMAMXSAMSSMMSSMAMMXMAXAAXMXMASXMXMMXXAAMMMSXMMXSAXMAMXMXMSXSXXMAAMAMAAXAASXSMXSAMAMSMSMMSSSSXSAMMM
MAMXSMSAAMMSMXAAAXSXMMSMSMSAMAMMXSMAAAAMASXMASAMAMMAAAAAXMAXAMXSMMMXXAMXMMXASAMMSSXAAAXAMXMMMAMAXAMXAMMMMSSSSSSXSMMSAAXAMAMAMAXXAAAMMXXMASAS
SXMASAXMXSAAMMMMMXAXMAXMMAMMSXMAAMMSMSXSMSAMSMXSAMMXMMSMMXMSMSAMXSMASXSMASASXASAAMMMMSMAMAMXXSSMSSSMXMAXMAMMMMXAAMAMXMMSSMSMSXSSMMXSASXSAMMA
AMMAMXXAAMMMMSAAXXMMSASASAXXMXMMMSAXXMASXSXMAAASMSXSXMAMSMMAXMAXMAMAXMAXAMSXSAMMSMASAMMAMAXMSMAMAAAXMMSMMAXAAAMMMMXSAXAMAAAASMMAMAAMASAMMSXM
MXMXSXMMMMMMXSMSSMXAMMSASXMSMXSAMAMMAMAMXSASXSMMAXAAAXAMMASXSSSMSMMASMSMMSMXMXMXXXASXSSMSSSMSSSMMXMMXMAAMSMSMSSXXSASMMMSMMMMMASMMMMMAMXMAXXX
XMAAMAXAXAAMMXAXAXMXSASMMMAXMASASMXMXMAXMXXMAAXXXMMXAMSMSXMMMAXMAXMXSAMXMAMXMASMSMXSAMXMAAAAXAXXMASXSSXXAMXAAXMASMMMXAAAXAMSSMMXXMASAMXMMSXM
MMSAMSMSSSXSAXSSSMSMMMMAAXXMMMSXMXXMAXSSSMSMMMMMSAXMSAMAMMASMAMXMMSAMXMASASMSMSAAXAMXSAMASMMMMMMMMXAAAASXMSMSMMSAMXXSMSSSMSAAXXMXXAAAXXAXMXX
AAXXAMAMAMSMMSMAAASXAAMXXXXMAMXMXAXSMMMAAAXMAMAAASXSMAMXMSAMMASASASASXSXMAXXAAMMMMMMASAMAXAXMXAAAMMMMMAAMXXMAMXAXXMAAAXAAMMMMASMSMSSMMSAAMMA
XMMXXMAMMMASXSMSMMMXSMSMAMSXMMXMMSXSAAXMMMMSASMMSMMXMMMXXMAXSASASXSAMXAAMASMMSMMMMXMASAMSSMMSXMMMMAXXXXMAMSSMSSMMASAMXMMMMSXMASAAAXAMASXMAAM
XXSSSXSMXAMAXXAXXAMMXAAMAMMASMMSXMAXSMMSSXASXSASAMXAMAMMMMAXMMSXSMMMMMMXMASXAAXAAAXMXSAMAAAAAASASMSMSSSXSMAAAAAXMXMSSMMMAAAAXMMXMXSAMASASXSS
XMAAMAMASXXMSMSMSSXAMMMMXXXAMAAXMMXMAXSAXMMXXXMMASMXSAXASMSSSMXAXAXAAASAMXSMSMSXMSAXMXMMSSMMSXMAAAAASAMAAMSMMSMSAMSAXAXSMSAMXAAXMAMXMXSAMMXM
XMASMAMASMMXAAAXAXMMMSSMSXMMXMSMSASMMMMMMXMSXMASXXAMAMXMSAAAMMMMMXSMSMSASXSXMASAAXXMASAMAMXXXXSSMSMMMAMXMAXAXMAMAMMMSMMXMXMAMMSSMASAMXMAMSAS
XSAMXXMXMASMMSMMXMMXAAAXAXSXSAMAMASMAAXXMASAMXMMMMMMAMMSMMMMMAAXAXMXXXSMMMSAMAMMMMSAMAMXXXMXMAMAAXMMSSMAXXSXMMAMAMAXSXSMMASAAAAAMASASXSXMMAM
XMSSSSMMSSMSMAXXAASAMSSMXSAAMAMXMXMASXSXMXSMMAXAAAMMMSXAAXMASMSSSMSASXSAMASAMSSXXXMSASXMSSMMMSMMSMSAAASMSXMMXSXMAMSXXAAASXSXSMXSMXSXXASXMMSM
XAAXXMAXMMAASMSSMSAMXMAXXMMXMXMSMXSAXMAXSMMXSASMMMXAMXXSMMMAMXAAAXMASASAMAXMMXMAMXMXXXAMAAAMAAAXAMMMXXAMXAAMMMASMXAMMMMXMAMXXMMMMXSMSXMMSAMS
MMMMXSMMAMSMMMAAXXMAMSMMXMXMXMXXAMAAXMAMXAMAXXMASMSMMAAXXSMSSMMMMXSMMAMAMAMSAMXAMAMMXMAMSXMMMXSAMXAXXSMXMMMMAMMMSAAAXAXAMAMAXAAAAXXAMXMXMASM
XAAAASXMXMASXMMMXSXMXAASMSAAMAMMXMMXMMMSMSMMSXMAMMASMAXSAMAXMASAMXAXXAMAMXMAAMMSMXMAMSMMXXXXAAAMXSXSXMXSMMMSXSAAMSMXXMMMMAMXSSMSSMMAMAMAMMMA
SMMSAMXMXSAMXMAMAASXMSSMASASMSXSASXMMAMAAXXMAAMSMSAMXMMMMMAMSAMASMMSSSSSSMMXMMAXMSMXXAAXMASMMSSMASMMASASAXMAXSMSXMMSMSASMMSMXMAAAXXSSXSASAXA
MMAXXMXXAMMSXSAMMSMXMXMMMMAXAXXSASMSSXSMSMXMMSMMAMMSXXAXAXXMXASAXXXXAXAAAMSAXMASASAMSSMMAXXAAXXMXSAXAMXSXMASMSAMXAAAAMASAMSAMMMMSXSMAXXASASX
SMSSSSSMASAAMSASMAMMSAMMSMMMXMAMAMAXAMXMAXSAAAAMXMMAMXMSMSMMSMMMSMMMSMMMSAAASMXSMMAMAAXMAXMMMSXSASXMASXSASMAAXAXSMMSSMAMXASMSASXMMAMSAMXXAXM
MAMAAAAXAMMMMMMMMASXMASASAMXXMAMMMXMSAAMAMXMSMSSSXMASAAAXXMXMXASAXAAXAXAMXMAXXMXXSAMXSXMAMXAMSAMASXXXXASAMXSXSMMMXMXMMXMMMMAMAMASMXMAXSSMSMA
MAMMMMMSMMASXSMASXSASAMMSXMAXXAXAXSMMSSSSSMMXMAAXAMASMSMSASAMSXSASXMSMMMXAMMMSSMMXAXXMAMAMXAMMAMXMMMSMMMMMMAMMXAXMAAMXXXAXMSMSMAMASXMAAAAAMM
SASAAAAAAMAXXAMAMMSAMXSAXASXSMSSMSAAMAMAMXAASMXMSSMAMAAASASMXMAMMMXXXXASXXMAAXAAMSMSSMXMAXSMMSMMMSAAAASXAAAMAXSXSASXSAMMMSAAAAMMMASAMSMMXMSM
SXMXSSSSSMMSSMMSMAMAMAMMSMMAMAAAXSMMMXXMAMMMMXAXAAMXSSMMMAMXXMXMAAAXXMASAMSMSSSSMAMAMMSMXMAMXXAAAMMMMMMASMSXSXMASAMAMASMASMMSMSSMASXMMXXAAAM
MSSXXMMXMXAAXAAAMSMMMMSAAXMAMMMSMXAXXMAXMASMSSMMSSMAAXMXMAMXMSMSMSSSMAAXMXAAAAAAXAMMXAAAMSMMMSSMSSSMSASXMAXMMAAAMAMXMAAAAMXMXMAAMAMAMXASXSMA
SAMMAMXAAMMSSMSXMAMASXMXSSSMSAAAXXMXMMSXMAMAAAAAAAXAMXXXSASAAAXAAAAAXSSSSSSSMMMMSMSXMSSXXAMXMXXAXAMXAXAAMXMSSXMXSMMMMSSMMSXSAMMXMSSSMMAMXAXS
MASMXMMMXAMAMAAMSMSASXMXMAAASMSXXAXXMAXMMAMMMSXMXSMSMMMMSAMMXMMMXMMMMMMAMAMAMXXAAAMXAXAMAMXXASMMMAMASXMSXMXAMMMAXXXAAMAMXXASXSXXAMAMSXAMSMMM
SAMXASMSAMMXMXMXAAMXSAMMMSMMMXMAXSMSMASASASAAXAMAXAMXAAXMSMXASMSMSAMXXMMMAMASAMMSXMSAMXMMXMXMXAASXMAMAXAAXMXSAMSMAMMXSSMSMMSMXMAMMAMASAMAXAM
MMMXMMAAAXSMMAXMMSMMSAMSXMASXSXMMAAMMASMXASMXSXMAMAXSMXMAAXMMMAAASASMMXSSMSASXMAMXMXMAAMMAMAXMXMSXMASXMMSMMASXSXAMXSAMAAXXXMAASXMSASMXMAXMMS
SASXAMXMSMSASASXXMMAMSASASMMASAMSMMMMASXMXMMXSMMXSMMMMXMSMSMMSSMMMAMAAAXSAMXMMMASAXASMSXSASASMSXMMSAMAMAMAMASMMMSXAAAXMMMXXMMXSAXSASXMMAXSXM
SASMSMMXXAXMAAXMASXSXMXSAMXMXMAMAMAAMAMMXMASAMAAMAXSASMAXAAXAAAXXMSSSMMSMXMASXMMSMXMSAXASMSXSAAAMAMASXMASAMAMAAXMMSSMMMAXXMSMXSXMMMMAXMMMSAA
MAMAMASMMSMAMAMAXSXMXSAMXMAMSSMMSSSSMASAMSMMASMXSAMSASMMMSMMMSSMXMAAASMXMAMAMXAASXSXMAMAMASAMXMXMASXMMMASXMMSSMMSAXAASXSMMAMXMMXMAMXSMMMASXM
MAMSMMXMAAXAAAXAMXAMASMMAXAAXAXAAXAAMAXMXAXSXMXAMXMMXMAMMXAAXAMXAMMMMMSAMXSAMSAMXMAXAMXXMXMASAMMSXXAMMMMSASAAAXAMSMSMMAMAMSXMAMAMASXXAXMASAM
SXSAMSAMXMXMSXMAMMMMAMMSXSMMMMMMMSMMMSSMSMMAMXMMMMXXSAMXAXSXSASMSSSMXMMXMMMAXMMSMXSXMMMMMXSASMSAMMSMMAAXSXMMSXMMSAMXXMXMMMMASXSXSASAXMMMASAM
MMSAMSASMMSAAMXSAAMMSXMAMXMMSSMSMSXXAAAAMXSXMASAASXMMSSMMMXXSAMAXAMXAMSMSASMSMAMXAXAMXSASXMXSAMMSAAXSSSMMAMAMXSXSXSSMMMSMAMXMMAMMMMMMSAMXSAM
MASMMSMMAAMXMSAAMMSAMXSXXAXAAAMAAXAMXSMMMASASXSSSSXMAASASXMASAMXMAMMASAAAXAAAMASMMSSMXSXSAAAMAMXMMSXXAMASAMXAAMMMMMXAAAAMMSSSMMMAXAXMSAXAMAM
MMSXXXAMMMMMAMXSMMMMSAMXSSMMSSSMSMMMMMXMMMSAMXMMXMAMMSSMXAMMMXSXMASXMSMSMAMSMSASAMAXSXXXSAMXMAMXMAMXAMMASXSXMMSAMAMXSMSXSAAXXAASXSMSMXMMSXMM
XAXMMSMMXAXMMMAMAXAAMASMAXMAAMXAXAAAXXAMXXMAMXXXASMMMXMASMMXSAMASASAXXAXXMXMAMXSAMAXAMXXSXMMSASXSXMXSMMXSAMXSXSMSAMMMAXAMMSSMXMMAMXAMASAMAMA
MMSMXAAMSXXMAMXXXMMMSAMAMXMMSSMXMSMSSSXSMMSXSSSMASAAMMXMMXXXMMMXMASXMMAXMAMMXMMSAMMASMMMMAXMAMXAAASAXXXXMASXXAMASASMMAMXMAAAMASMSMSASXMASXMS
ASAXSMMMMAAXXMAASXSXMXSSXMXAAAXMMAMMAMXSAXAAAASMAMXMXSMXMXSXXAAXSAXMXSASXXSAMXAMAMXMXAAXSAMSXSMMMMMASMSXSASMMXMAMXMMAXSXMMSSMMMAMASAMXMAMAAA
SMMMMASASMSMXXAMAAMMSMMXSASMMSXMMAXXAXASXMMAMMMMMSAXAXAMMAMXSMSAMXSAMMASXMAXMMSXSAMXSSMMAAXXASXAXXMXMAAXMASAAXMXSXSAXMXMXMXAXXMAMMMSMAMASMMM
AAXMSAMAMAAMAAXXMMMASAMAAMXMXAAMSMSMSMAXASXASXSASAAMSSSXMASMMMAMXXMXAMSMMXMAMAAMAMXAMAXSSMMMMMSMXMXSMMMMMAMMSMMAXXMASMXSASXMMXSASAAASMSMSXSX
SSMMMXSSMSMMSSMAMXSASAMSSMXXAMXMAASAMMMSAMSXSASXSMSMXAAXSASAAAASAAXASXMAMMASMMXSXMMMSSMMAMXAAAMMXSAMAMXAXAXAMAMASMSMAXAMXSAAMMMXMMMMXXMASASX
MMAMXAAAAXXAAAAXMAMXSAMXAMAMSXMMMSMAXAMMMMSXMXMXSXMAMSMXMXSMMXMSMSAMXAMAMSAMAAMXMAMXAMMMAMASMXSAAMAXAMXSSMSMSMMASMAMMMXMMSXMXAXASXSSXSMSMAMX
XSAMMASMMMMSSSMMMXSASAMSMMAMMAMSMMMXMMMASAMASASAXAXXMAXAMXXXMSXMMAAXMAMSMMASXMASXMASMSSSSMXXAAMMSSSMSSMASMAXXXMAMXAXXAASASASMSMMSAAXAMMMMSMM
AMXSAAMMSMMAAXAMXAMAXAMXXSMMMAMAAXAAMXSXMAMAMAMMMSMMXXSSSSMAAMAAASXMMAMMASAMMSASMMASAAAAAXMMMMSMAMASAAMAMXAXSAMXSSSSMMSMAMAMXXAMMXMMMMSXAMAM
XMASMXMXAAXMAXSMMMSASXMSMSAASXSMSSSXSASXSAMSMMMSMAASAMXMAAXAMSSMMMASXMXSAMASAMAXAMAMMXMSMMAMAMAMASMMSSMMSSMSSMXAMAMAXSAMAMSMMXSMAAMASASMXSAM
XMASXAXSSSMXMXMAAMAXMAAXAMSMMAXAAAAMMASAMXSXAAAAAMAMXXMMSMXSXMASXSAMAAMMMXXMASMSMMAXSAMMXAMSASASMSXXXXAXAAXAMXMXMMMAXMAMXSMASAMMSMSSMASMMSMS
SMMMXMXXXAXXSASXMSSSSMMMSMMMMSMXMMXMSMXAXMAXSMSSSXSAXAAAAXXXAMXSMMMSMMMASMMMXMAAAMAXXAXSXSASASASAXXMASMMSSMMSXSMSAMXSSXMSMXAMASXMAMMMMMAXXAX
XSAAAMSSMMMXMAXSAAAMMAXAMAXXAAMMMSMMMXSMMXMAXAAAXAXAASMMSXSMMXAXAAXXMXSAXAAAAMMMMMMSMMMSAAMMAMAMMMMMXXAAAMAXAMAASXXAXXAXAMMMSXMXMAMAAXXXMMXM
SXMXMSAMAXAAMAMMMMSMSAMASXMMSMSAAAAASMSASXSMMSMMMSMMMAAAXMSAMXMMSMSAMMMMSSMSSSMASXMAAAAMXMXMMMAXMAAAMMMMMSMMMMMMMMMMMXMMMSAASAMSSMSSSMMAMXAS
MMSSMMXSXMSXMMSXSAMXXAMMMXAMAASMSSSXSASAMAAXXAMXAXAMXSMMSASXMASAMXSAMAAAAAMAAAXXMAMSSMSSMSXSMSASMSSSMSAAXXMAXAXAMXSAAASAMXMMSAMAAXAAAMXMMXAS
MAAAXMASMXMASAXAMAXASXMXMMSXSMMMMXMAMXMAMSMMSSXSXSMMAAXMAMMXSASAXAXAMXMMSSSSSXMXSSMMAXMAMXAXAMXSAMAMAMSSSMSSSXSXSASMSMSAMXMAMXMSSMMMMMASMSMX
MMSSMMASMASAMXMSMSMMMMMAMXMMMAMXMAMSMMXAMXAXAAASMMASXMMMMMSXMXSXMSSMMSSMAXAAXMAMAXAXSMSAMMMMMMXMMMAMAMXXAAMXSAAAMASAMASAMSMSSMAMMAXSXSMSAAAM
XMAAXMXMMAMAMXAMAXSXMASXSAMASAMAMXMMASMMSXMMMMMMASAMAAMSMAMXAAMAMAAAAAAMSXMMMAAAASMMMASAMXAAAAXMASXSSSXSMXSAMXMSMAMXMAMXMAAMMAAMMSMSAMXMMMMA
MMMSMSMSMSSSSSSMXMSSMASMAASASASXMSXSAMAXMASAXXXMXMAMSMMAMASMSMSAMSSMMXMMMASXXMASXMAMSAMXMSSSSMXXAMMAMXXMAAMASMMAMAXAMSSSSMSMMSXSAAASAMXMASXS
MSAXMSAXAMAAXAMXSMMAMASMSMMXSAMAXAAMXXXMAXSAXSAMXXSMMXSXSASXAAAAXAAAAMSSSXMAXSAMAMXAMAMXXXXAMMSMMSSXMASMMMSAMASASMSMXMAXXMMAAXAMMMXSAMXMASAM
XMASAMMMMMMXMMMAAASAMXXMAMXAMAMXMMSMSXSAMXMAMXAMAAXAMXXXMASXMSMMMSMMMSAAXMMMMAASMMXXSSMXSAMXMAAASAMXXAAXXXMASAMASXAXAMSMAMSMMMMMSSMSAMXMXMAM
MMMMXMXSXMXMMAMXSXMASXSSMSMMSAMSXMAASMSAMXXMASXMSSMAMMMXMASAXAXXAXASMMMXMAAXXMMMXMXMAXAMMMMAMMSMMASXSMMMMMSAMXMXMMSSXSAAAAAXMXMAXAXSMMXSASAM
AAAXAXAMAMAAMAAAMAMASXAAXAAAAAXMAXMXMASAMXXXMXXAAXXAMAMAMSMMXMAMMSXMASMMSSSSXXXXAMASMMXMAASASAMMSXMXMXAAAAMXMXMAMAXAXSMSMSSXMAMMSMMMASASASMS
SSXSAMXSASASXMSXSAMAMMXMMAMXSMMSXMSAMMMMXMASXMMMMSSSSMXAMAAXMMAAXAXMSMAXXAAAMSMSASAXAMXSXXSASXSAXXMASMSXSSSSXSSSSMMMMMXXMMMASXMMAXXSAMMSASAS
MAASAAMSAXAXXAAAMXMSXSXXAAXMMMASXAXAXMAXXXAMAAXAXXAMAMSSSMSMXXAXMAMXAMXSMSMMMAAMXMXSAMXMSMMMMMMMSMMMSMAAXAMMAMAMXXAXAXXXMAMXMAASASMMASAMAMAM
MMMMASMMMMSMMMMSMSMMAXMASASMSMASMSMMSSSMXMMSXMSMSMAMAMAAAAMAMSSSMAMSSSMXAAMXSMSMSAASAMAAAXAMAMAXMXMXMMMMMAMMAMAMSSMSSSMMSMSXSSXMASASAMAMMMSS
MSAMXMXMAAXAXXAAMAAMXMAMMAAAAMASAAAXAAASAMXAXXAAAMXSXSXSMMMXMAAAMAXAAAXMSMSAXMAASAMXASMSMSMSXSAMXAXAXAAASXMSSSMSAAAAAAXAASXAXMXXASXMXSAMXAAA
ASAMXXXSMSSMMMSSSMSMXMSXMXMSMMMSMSSMMSMMSMXASMMSMSMXXXAAXXXXMMSMMSMMSMMXXXMASMMMMXXSXMAXXXMAMMXMSASXSSSXXSAXMXMAMMMMSMMSSSMMMAXMASXMMSASMMSS""";

  int appearances = 0;

  Xmas();

  calculateAppearances() {
    List<List<String>> input = Utils.stringToEmbeddedList(value);

    for (var i = 0; i < input.length; i++) {
      for (var y = 0; y < input[i].length; y++) {
        String letter = input[i][y];
        if (letter == "A") {
          if (isWithinBounds(i + 1, 0, input.length) &&
              isWithinBounds(i - 1, 0, input.length) &&
              isWithinBounds(y + 1, 0, input.length) &&
              isWithinBounds(y - 1, 0, input.length)) {
            String firstDiagonal =
                [input[i + 1][y - 1], letter, input[i - 1][y + 1]].join();
            String secondDiagonal =
                [input[i - 1][y - 1], letter, input[i + 1][y + 1]].join();

            if (check(firstDiagonal) && check(secondDiagonal)) {
              appearances += 1;
            }
          }
        }
      }
    }
  }

  bool isWithinBounds(int index, int lowerBound, int upperBound) {
    return index >= lowerBound && index < upperBound;
  }

  bool check(String v) {
    if (v == "MAS" || v == "SAM") return true;
    return false;
  }
}
