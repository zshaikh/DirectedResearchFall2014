.class Lcom/stuv/ane/w3i/W3iWrapper$2;
.super Ljava/lang/Object;
.source "W3iWrapper.java"

# interfaces
.implements Lcom/nativex/monetization/listeners/OnAdEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/w3i/W3iWrapper;->showPlacement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nativex$monetization$enums$AdEvent:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$nativex$monetization$enums$AdEvent()[I
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper$2;->$SWITCH_TABLE$com$nativex$monetization$enums$AdEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nativex/monetization/enums/AdEvent;->values()[Lcom/nativex/monetization/enums/AdEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->COLLAPSED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DISMISSED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DISPLAYED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->EXPANDED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->NO_AD:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->RESIZED:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->USER_TOUCH:Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/stuv/ane/w3i/W3iWrapper$2;->$SWITCH_TABLE$com$nativex$monetization$enums$AdEvent:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const-string v2, "Nyo"

    .line 114
    const-string v0, "Ad Event"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper$2;->$SWITCH_TABLE$com$nativex$monetization$enums$AdEvent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nativex/monetization/enums/AdEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    const-string v0, "Nyo"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adDidDismiss "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "adDidDismiss"

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v0, "Nyo"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adDidDisplay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "adDidDisplay"

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_3
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "adError"

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_4
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "adExpired"

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_5
    const-string v0, "Nyo"

    const-string v0, "fetched"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$3()Landroid/app/Activity;

    move-result-object v0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_6
    const-string v0, "Nyo"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "noAdContent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$0()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "noAdContent"

    # getter for: Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
