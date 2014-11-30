.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;
.super Ljava/lang/Object;
.source "FbSdkContext.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbSdkStatusCallback"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState:[I


# instance fields
.field private final cbid:Ljava/lang/String;

.field private final fbState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field private final stActivity:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionState()[I
    .locals 3

    .prologue
    .line 681
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->$SWITCH_TABLE$com$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->$SWITCH_TABLE$com$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;)V
    .locals 0
    .param p2, "cbid"    # Ljava/lang/String;
    .param p3, "stActivity"    # Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;
    .param p4, "state"    # Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->cbid:Ljava/lang/String;

    .line 688
    iput-object p3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->stActivity:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    .line 689
    iput-object p4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->fbState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 690
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 8
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    .line 694
    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    .line 696
    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Sessionstate changed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "state = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v7, 0x0

    .line 699
    .local v7, "callAuthorizeFinish":Z
    const/4 v2, 0x0

    .line 700
    .local v2, "success":Z
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 737
    const-string v0, "Session default handler [unexpected]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "state - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const/4 v7, 0x1

    .line 739
    const/4 v2, 0x0

    .line 742
    :goto_0
    if-eqz p3, :cond_0

    .line 743
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 744
    const/4 v7, 0x1

    .line 745
    const/4 v2, 0x0

    .line 747
    :cond_0
    if-eqz v7, :cond_1

    .line 748
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->stActivity:Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->cbid:Ljava/lang/String;

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;->fbState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    move-object v6, p3

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->authorizeFinish(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;ZLjava/lang/String;Ljava/util/List;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;Ljava/lang/Throwable;)V
    invoke-static/range {v0 .. v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$3(Lcom/playtika/extensions/fbsdk/FbSdkContext;Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;ZLjava/lang/String;Ljava/util/List;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;Ljava/lang/Throwable;)V

    .line 750
    :cond_1
    return-void

    .line 703
    :pswitch_0
    const-string v0, "Session - OPENED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v7, 0x1

    .line 705
    const/4 v2, 0x1

    .line 706
    goto :goto_0

    .line 708
    :pswitch_1
    const-string v0, "Session - OPENED_TOKEN_UPDATED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v7, 0x1

    .line 710
    const/4 v2, 0x1

    .line 711
    goto :goto_0

    .line 714
    :pswitch_2
    const-string v0, "Session - CLOSED_LOGIN_FAILED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v7, 0x1

    .line 716
    const/4 v2, 0x0

    .line 717
    goto :goto_0

    .line 719
    :pswitch_3
    const-string v0, "Session - CREATED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const/4 v7, 0x0

    .line 721
    goto :goto_0

    .line 723
    :pswitch_4
    const-string v0, "Session - CLOSED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v7, 0x1

    .line 725
    const/4 v2, 0x0

    .line 726
    goto :goto_0

    .line 728
    :pswitch_5
    const-string v0, "Session - CREATED_TOKEN_LOADED"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v7, 0x0

    .line 730
    goto :goto_0

    .line 733
    :pswitch_6
    const-string v0, "Session - OPENING"

    invoke-static {v0, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v7, 0x0

    .line 735
    goto :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
