<div align="center"><h1>Alora NPC for BGII (WIP)</h1>

<h3>A TeamBG mod for Baldur's Gate II:ToB, Baldur's Gate Trilogy, BG2:EE and EET<h3>

</div><br />

## 

:warning: Readme writing in progress... Don't try to download and install this mod as it is a WIP version and its install will fail, because of missing files still in development or in beta testing

## 

The halfling thief from Baldur's Gate can be found in Ribald's store.

<hr>


#### Version 2.0 (October 5, 2020)

- TODO Added *alora.ini* metadata file to support AL|EN's "Project Infinity".
- TODO Renamed *setup-alora.tp2* -> *alora.tp2* to support AL|EN's "Project Infinity".
- TODO Replaced `AUTHOR` keyword with `SUPPORT`.
- TODO Replaced `AT_INTERACTIVE_EXIT` deprecated command with `README`.
- TODO Used `HANDLE_CHARSETS` function to convert string entries for EE games.
- TODO Added component `DESIGNATED` number and "*alora_npc_for_bg2*"`LABEL`.
- Gathered Alora mod for original BG2 and BG2:EE in one single package, and added native EET compatibility.
- Commented code as much as possible.
- TODO Replaced `GAME_IS` conditions with variables checks to speed up install time.
- TODO Rewrote install procedure to use WeiDU's built-in `HANDLE_AUDIO` function.
- bcmalor.d: Integrated <a href="http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page-49#entry561215">Lollorian's class script trigger fixes</a>.
- Added Alora and Edwin sound clips for every translated language.
- Fixed Alora portraits in EE games and removed portraits installation as they already exists in games biff files.
- Added foreign languages WeiDU prompts whenever possible.
- Proofread tra files.
- Added French translation (by Tonton-thon).
- TODO Re-formated, updated and renamed readme file to *alora-readme-english.html* and moved it into new readme folder.
- TODO Removed useless files and backup folder.
- Lower cased files.
- Updated OggDec to v1.9.7.
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- TODO Updated WeiDU installer to v247.
- TODO Included Linux and Mac Os X versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).

- Revamped scripts: Replaced old-school trigger conditions `!StateCheck("XXX",STATE_SLEEPING)` with more accurate CamDawg's `!StateCheck("XXX",CD_STATE_NOTVALID)` and added `InParty("XXX")` whenever needed.
