#!/bin/make -f

START   = archivemaker

DIRS	= \
	archivemaker \
	makearchive

makearchive: archivemaker

RESOURCEFILES = \
	IconMapping \
	LICENSE.txt

IMAGEFILES = \
	CHOP_jiggle.pic \
	DeleteInstance.pic \
	HSV.pic \
	HoudiniLogo2.pic \
	IceLogo.pic \
	IceLogoS.pic \
	InsertInstance.pic \
	JIVE_Tack.pic \
	JIVE_Untack.pic \
	JediLogo.pic \
	LAVA_App.pic \
	LavaLogo.pic \
	LavaLogoS.pic \
	Logo.pic \
	OBJ_light_pxraov.png \
	OBJ_light_pxrdisk.png \
	OBJ_light_pxrdistant.png \
	OBJ_light_pxrdome.png \
	OBJ_light_pxrenvday.png \
	OBJ_light_pxrmesh.png \
	OBJ_light_pxrportal.png \
	OBJ_light_pxrrect.png \
	OBJ_light_pxrsphere.png \
	OdinLogo.pic \
	OdinLogoS.pic \
	QuitPlasma.pic \
	RGB.pic \
	RampHorizontal.pic \
	RampVertical.pic \
	Round1.pic \
	Round2.pic \
	Round3.pic \
	Round4.pic \
	Round5.pic \
	Round6.pic \
	Round7.pic \
	RoundDown1.pic \
	RoundDown2.pic \
	RoundDown3.pic \
	RoundDown4.pic \
	RoundDown5.pic \
	RoundDown6.pic \
	RoundDown7.pic \
	SageLogo.pic \
	SageLogoS.pic \
	VOP_banana.pic \
	VOP_bricks.pic \
	VOP_bxdf_pxrmarschner.png \
	VOP_bxdf_pxrsurface.png \
	VOP_bxdf_pxrvolume.png \
	VOP_cardboard.pic \
	VOP_chromenv.pic \
	VOP_cloudenv.pic \
	VOP_clouds.pic \
	VOP_concrete.pic \
	VOP_eggshell.pic \
	VOP_fire.pic \
	VOP_glass.pic \
	VOP_glow.pic \
	VOP_hair.pic \
	VOP_halo.pic \
	VOP_marble.pic \
	VOP_mold.pic \
	VOP_rust.pic \
	VOP_shinymetal.pic \
	VOP_skin.pic \
	VOP_smoke.pic \
	VOP_stone.pic \
	VOP_stonewall.pic \
	VOP_stucco.pic \
	VOP_thinfilm.pic \
	VOP_twosided.pic \
	VOP_txtmodel.pic \
	VOP_watersurf.pic \
	VOP_wireframe.pic \
	VOP_wood.pic \
	VOP_woodplank.pic \
	action.pic \
	blue_on.pic \
	broken.pic \
	cylinderPreview.pic \
	deckAudio.pic \
	deckFF.pic \
	deckLogo.pic \
	deckPlay.pic \
	deckRR.pic \
	deckRecord.pic \
	deckStop.pic \
	green_on.pic \
	hkeyn.pic \
	houdini.pic \
	ice.pic \
	jive.pic \
	moca.pic \
	mojo.pic \
	no_refresh.pic \
	paint.pic \
	plasma.pic \
	prisms.pic \
	quadPreview.pic \
	red_off.pic \
	red_on.pic \
	sage.pic \
	spherePreview.pic \
	yellow_green.pic \
	yellow_on.pic

RESOURCEDIR = $(DEV_SUPPORT)/config
IMAGEDIR = $(DEV_SUPPORT)/config/Icons

install::
	(umask 2; mkdir -p $(RESOURCEDIR))
	(cd $(RESOURCEDIR) ; rm -f $(RESOURCEFILES))
	cp $(RESOURCEFILES) $(RESOURCEDIR)
	(cd $(RESOURCEDIR) ; $(call CHMOD,a-w,$(RESOURCEFILES)))
	(umask 2; mkdir -p $(IMAGEDIR))
	(cd $(IMAGEDIR) ; rm -f $(IMAGEFILES))
	(cd Pics ; cp $(IMAGEFILES) $(IMAGEDIR))
	(cd $(IMAGEDIR) ; $(call CHMOD,a-w,$(IMAGEFILES)))

include $(SRCROOT)/houdini/make/C++MakeDirs
