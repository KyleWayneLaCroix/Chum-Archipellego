DEF NUM_MOM_ITEMS_1 EQUS "((MomItems_1.End - MomItems_1) / 8)"
DEF NUM_MOM_ITEMS_2 EQUS "((MomItems_2.End - MomItems_2) / 8)"

	const_def 1
	const MOM_ITEM
	const MOM_DOLL

MomTriesToBuySomething::
	end

CheckBalance_MomItem2:
	end

MomBuysItem_DeductFunds:
	end

Mom_GiveItemOrDoll:
	end

Mom_GetScriptPointer:
	end

GetItemFromMom:
	end

INCLUDE "data/items/mom_phone.asm"

MomHiHowAreYouText:
	text_far _MomHiHowAreYouText
	text_end

MomFoundAnItemText:
	text_far _MomFoundAnItemText
	text_end

MomBoughtWithYourMoneyText:
	text_far _MomBoughtWithYourMoneyText
	text_end

MomItsInPCText:
	text_far _MomItsInPCText
	text_end

MomFoundADollText:
	text_far _MomFoundADollText
	text_end

MomItsInYourRoomText:
	text_far _MomItsInYourRoomText
	text_end


DummyPredef3A_DummyData: ; unreferenced
	db 0

DummyPredef3A:
	ret

DummyPredef3A_DummyFunction: ; unreferenced
	ret
