local shared = require("scripts.stageapi.shared")

-- Overriden Stages Reimplementation

-- Catacombs --
StageAPI.Catacombs = StageAPI.CustomStage("Catacombs", nil, true)
StageAPI.Catacombs:SetStageMusic(Music.MUSIC_CATACOMBS)
StageAPI.Catacombs:SetStageNumber(LevelStage.STAGE2_1)
StageAPI.Catacombs.GenerateLevel = StageAPI.GenerateBaseLevel
StageAPI.Catacombs.DisplayName = "Catacombs I"

StageAPI.CatacombsTwo = StageAPI.Catacombs("Catacombs 2")
StageAPI.CatacombsTwo:SetStageNumber(LevelStage.STAGE2_2)
StageAPI.CatacombsTwo.DisplayName = "Catacombs II"

StageAPI.CatacombsXL = StageAPI.Catacombs("Catacombs XL")
StageAPI.CatacombsXL:SetStageNumber(LevelStage.STAGE2_2)
StageAPI.CatacombsXL.DisplayName = "Catacombs XL"
StageAPI.Catacombs:SetXLStage(StageAPI.CatacombsXL)

StageAPI.CatacombsGreed = StageAPI.Catacombs("Catacombs Greed")
StageAPI.CatacombsGreed:SetStageNumber(LevelStage.STAGE2_GREED)
StageAPI.CatacombsGreed.DisplayName = "Catacombs"

StageAPI.AddOverrideStage("CatacombsOne", LevelStage.STAGE2_1, StageType.STAGETYPE_WOTL, StageAPI.Catacombs)
StageAPI.AddOverrideStage("CatacombsTwo", LevelStage.STAGE2_2, StageType.STAGETYPE_WOTL, StageAPI.CatacombsTwo)
StageAPI.AddOverrideStage("CatacombsGreed", LevelStage.STAGE2_GREED, StageType.STAGETYPE_WOTL, StageAPI.CatacombsGreed, true)

StageAPI.Catacombs:SetReplace(StageAPI.StageOverride.CatacombsOne)
StageAPI.CatacombsTwo:SetReplace(StageAPI.StageOverride.CatacombsTwo)

-- Necropolis --
StageAPI.NecropolisOverlays = {
    StageAPI.Overlay("stageapi/floors/necropolis/overlay.anm2", Vector(0.33, -0.15), nil, nil, 0.5),
    StageAPI.Overlay("stageapi/floors/necropolis/overlay.anm2", Vector(-0.33, -0.15), Vector(128, 128), nil, 0.5),
    StageAPI.Overlay("stageapi/floors/necropolis/overlay.anm2", Vector(0.33, 0.1), nil, nil, 0.5),
}

StageAPI.Necropolis = StageAPI.CustomStage("Necropolis", nil, true)
StageAPI.Necropolis:SetStageMusic(Music.MUSIC_NECROPOLIS)
StageAPI.Necropolis:SetStageNumber(LevelStage.STAGE3_1)
StageAPI.Necropolis.GenerateLevel = StageAPI.GenerateBaseLevel
StageAPI.Necropolis.DisplayName = "Necropolis I"

StageAPI.NecropolisTwo = StageAPI.Necropolis("Necropolis 2")
StageAPI.NecropolisTwo:SetStageNumber(LevelStage.STAGE3_2)
StageAPI.NecropolisTwo.DisplayName = "Necropolis II"

StageAPI.NecropolisXL = StageAPI.Necropolis("Necropolis XL")
StageAPI.NecropolisXL:SetStageNumber(LevelStage.STAGE3_2)
StageAPI.NecropolisXL.DisplayName = "Necropolis XL"
StageAPI.Necropolis:SetXLStage(StageAPI.NecropolisXL)

StageAPI.NecropolisGreed = StageAPI.Necropolis("Necropolis Greed")
StageAPI.NecropolisGreed:SetStageNumber(LevelStage.STAGE3_GREED)
StageAPI.NecropolisGreed.DisplayName = "Necropolis"

StageAPI.AddOverrideStage("NecropolisOne", LevelStage.STAGE3_1, StageType.STAGETYPE_WOTL, StageAPI.Necropolis)
StageAPI.AddOverrideStage("NecropolisTwo", LevelStage.STAGE3_2, StageType.STAGETYPE_WOTL, StageAPI.NecropolisTwo)
StageAPI.AddOverrideStage("NecropolisGreed", LevelStage.STAGE3_GREED, StageType.STAGETYPE_WOTL, StageAPI.NecropolisGreed, true)

-- Utero --
StageAPI.Utero = StageAPI.CustomStage("Utero", nil, true)
StageAPI.Utero:SetStageMusic(Music.MUSIC_UTERO)
StageAPI.Utero:SetStageNumber(LevelStage.STAGE4_1)
StageAPI.Utero.GenerateLevel = StageAPI.GenerateBaseLevel
StageAPI.Utero.DisplayName = "Utero I"

StageAPI.UteroTwo = StageAPI.Utero("Utero 2")
StageAPI.UteroTwo:SetStageNumber(LevelStage.STAGE4_2)
StageAPI.UteroTwo.DisplayName = "Utero II"

StageAPI.UteroXL = StageAPI.Utero("Utero XL")
StageAPI.UteroXL:SetStageNumber(LevelStage.STAGE4_2)
StageAPI.UteroXL.DisplayName = "Utero XL"
StageAPI.Utero:SetXLStage(StageAPI.UteroXL)

StageAPI.UteroGreed = StageAPI.Utero("Utero Greed")
StageAPI.UteroGreed:SetStageNumber(LevelStage.STAGE4_GREED)
StageAPI.UteroGreed.DisplayName = "Utero"

StageAPI.AddOverrideStage("UteroOne", LevelStage.STAGE4_1, StageType.STAGETYPE_WOTL, StageAPI.Utero)
StageAPI.AddOverrideStage("UteroTwo", LevelStage.STAGE4_2, StageType.STAGETYPE_WOTL, StageAPI.UteroTwo)
StageAPI.AddOverrideStage("UteroGreed", LevelStage.STAGE4_GREED, StageType.STAGETYPE_WOTL, StageAPI.UteroGreed, true)