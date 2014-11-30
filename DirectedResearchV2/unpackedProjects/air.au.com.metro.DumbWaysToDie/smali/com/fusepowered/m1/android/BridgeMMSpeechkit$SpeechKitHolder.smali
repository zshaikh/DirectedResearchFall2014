.class Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMSpeechkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechKitHolder"
.end annotation


# instance fields
.field private _speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/android/BridgeMMSpeechkit$1;

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;
    .param p1, "x1"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;

    return-object p1
.end method


# virtual methods
.method public getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;

    return-object v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 372
    :cond_0
    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;-><init>(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSpeechKit(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 0
    .param p1, "speechKit"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;

    .line 400
    return-void
.end method
