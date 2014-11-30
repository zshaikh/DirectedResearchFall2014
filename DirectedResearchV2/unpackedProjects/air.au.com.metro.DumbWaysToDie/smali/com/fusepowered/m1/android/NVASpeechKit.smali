.class public Lcom/fusepowered/m1/android/NVASpeechKit;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/NVASpeechKit$8;,
        Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;,
        Lcom/fusepowered/m1/android/NVASpeechKit$Result;,
        Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;,
        Lcom/fusepowered/m1/android/NVASpeechKit$State;,
        Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    }
.end annotation


# static fields
.field static final AUDIO_LEVEL_CHANGE_INTERVAL:F = 0.25f

.field static final AUDIO_LEVEL_MAX:F = 90.0f

.field private static final AUDIO_LEVEL_UPDATE_FREQUENCY:I = 0x32

.field private static final AUDIO_SAMPLE_PERIOD:I = 0x7d0

.field static final SAMPLING_BG_INTERVAL:F = 0.1f

.field private static nuanceIdCache:Ljava/lang/String;


# instance fields
.field _credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

.field public _results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

.field private audioLevelCallback:Ljava/lang/Runnable;

.field private audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

.field private audioSampleCallback:Ljava/lang/Runnable;

.field private commandListener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

.field private dataUploadListener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

.field private nuance_transaction_session_id:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

.field private pendingDataUploadCommandType:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

.field private sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

.field private skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

.field private skCurrentVocalizer:Lcom/nuance/nmdp/speechkit/Vocalizer;

.field private skRecogListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

.field private skVocalListener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

.field private speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

.field private speeckKitHandler:Landroid/os/Handler;

.field private state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuanceIdCache:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .line 189
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    invoke-direct {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    .line 198
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$1;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioSampleCallback:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$2;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$3;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->commandListener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 255
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$4;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->dataUploadListener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 344
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$5;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    .line 295
    if-eqz p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 298
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->initInternalData(Landroid/content/Context;)V

    .line 300
    :cond_0
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/fusepowered/m1/android/NVASpeechKit;[Lcom/fusepowered/m1/android/NVASpeechKit$Result;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # [Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->resultsToJSON([Lcom/fusepowered/m1/android/NVASpeechKit$Result;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->handleSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->startProgress(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioSampleCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->cancelAudioLevelCallbacks()V

    return-void
.end method

.method static synthetic access$1600(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->processResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$State;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/m1/android/NVASpeechKit;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->notifySpeechResults()V

    return-void
.end method

.method static synthetic access$800(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object v0
.end method

.method static synthetic access$802(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object p1
.end method

.method static synthetic access$900(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/NVASpeechKit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommandType:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    return-object v0
.end method

.method private byte2Str([B)Ljava/lang/String;
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    const/4 v4, 0x0

    .line 681
    :goto_0
    return-object v4

    .line 670
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 671
    .local v1, "hexString":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 673
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 674
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "hex":Ljava/lang/String;
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 677
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 679
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 681
    .end local v0    # "hex":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private cancelAudioLevelCallbacks()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioSampleCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1035
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1037
    :cond_0
    return-void
.end method

.method private createRecognizerListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .locals 1

    .prologue
    .line 834
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$7;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$7;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    return-object v0
.end method

.method private createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 1

    .prologue
    .line 799
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$6;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/NVASpeechKit$6;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    return-object v0
.end method

.method private getAdId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 657
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getAdId()Ljava/lang/String;

    move-result-object v1

    .line 662
    .end local v0    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DEFAULT_AD_ID"

    goto :goto_0
.end method

.method private getMMWebView()Lcom/fusepowered/m1/android/MMWebView;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/NVASpeechKit;
    check-cast p0, Lcom/fusepowered/m1/android/MMWebView;

    move-object v0, p0

    .line 309
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/fusepowered/m1/android/NVASpeechKit;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;
    .locals 2
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    const-string v0, "No Error given"

    .line 829
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speech Kit Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suggestions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 1
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 960
    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 985
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    invoke-interface {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onError()V

    .line 988
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->ERROR:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 989
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->getSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceError(Ljava/lang/String;)V

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 964
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-nez v0, :cond_1

    .line 966
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->PROCESSING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 969
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .line 970
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->notifySpeechResults()V

    goto :goto_0

    .line 975
    :pswitch_2
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initInternalData(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->packageName:Ljava/lang/String;

    .line 956
    :cond_0
    return-void
.end method

.method private notifySpeechResults()V
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    iget-wide v1, v1, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onAudioSampleUpdate(D)V

    .line 1002
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 1009
    :cond_0
    :goto_0
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 1011
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    invoke-interface {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onResults()V

    goto :goto_0
.end method

.method private processResults(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "inputResults":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;>;"
    const-string v4, "processResults called."

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    iput-object v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;

    .line 793
    .local v3, "r":Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;
    iget-object v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    new-instance v5, Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;->getConfidenceScore()D

    move-result-wide v7

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/fusepowered/m1/android/NVASpeechKit$Result;-><init>(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/lang/String;D)V

    aput-object v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 795
    .end local v3    # "r":Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;
    :cond_0
    return-void
.end method

.method private releaseWebView()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 319
    :cond_0
    return-void
.end method

.method private resultsToJSON([Lcom/fusepowered/m1/android/NVASpeechKit$Result;)Lorg/json/JSONArray;
    .locals 7
    .param p1, "resultArray"    # [Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .prologue
    .line 323
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 325
    .local v2, "list":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 327
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "score"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->getResultScore()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v4, "result"

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->getResultString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 336
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "JSON creation error."

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 338
    const/4 v4, 0x0

    .line 341
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    :cond_0
    move-object v4, v2

    goto :goto_1
.end method

.method private declared-synchronized setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    .locals 3
    .param p1, "state"    # Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording results returned. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .line 1023
    .local v0, "old_state":Lcom/fusepowered/m1/android/NVASpeechKit$State;
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .line 1024
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    if-eq v1, v0, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    invoke-interface {v1, p1}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onStateChange(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_0
    monitor-exit p0

    return-void

    .line 1021
    .end local v0    # "old_state":Lcom/fusepowered/m1/android/NVASpeechKit$State;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startProgress(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1016
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1017
    return-void
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    const/4 v2, 0x0

    .line 693
    :goto_0
    return-object v2

    .line 688
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 689
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 691
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 693
    goto :goto_0
.end method


# virtual methods
.method audioLevelChange(D)V
    .locals 3
    .param p1, "audioLevel"    # D

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 457
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.audioLevelChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method backgroundAudioLevel(D)V
    .locals 3
    .param p1, "audioLevel"    # D

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 484
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.backgroundAudioLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method public cancelRecording()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "cancel RECORDING"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 544
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 546
    :cond_0
    return-void
.end method

.method public endRecording()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "end RECORDING"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 531
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized getNuanceId()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 909
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/fusepowered/m1/android/NVASpeechKit;->nuanceIdCache:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 910
    sget-object v7, Lcom/fusepowered/m1/android/NVASpeechKit;->nuanceIdCache:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :goto_0
    monitor-exit p0

    return-object v7

    .line 911
    :cond_0
    const/4 v0, 0x0

    .line 912
    .local v0, "context":Landroid/content/Context;
    :try_start_1
    iget-object v7, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    .line 914
    iget-object v7, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fusepowered/m1/android/MMWebView;

    .line 915
    .local v6, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v6, :cond_1

    .line 917
    invoke-virtual {v6}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 920
    .end local v6    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    :cond_1
    if-nez v0, :cond_2

    move-object v7, v9

    .line 922
    goto :goto_0

    .line 929
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 931
    .local v4, "mmdid":Ljava/lang/String;
    if-nez v4, :cond_3

    move-object v7, v9

    .line 932
    goto :goto_0

    .line 936
    :cond_3
    :try_start_2
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 937
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 938
    .local v2, "hashBytes":[B
    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK;->byteArrayToString([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 945
    .local v5, "nuanceId":Ljava/lang/String;
    :try_start_3
    sput-object v5, Lcom/fusepowered/m1/android/NVASpeechKit;->nuanceIdCache:Ljava/lang/String;

    move-object v7, v5

    goto :goto_0

    .line 940
    .end local v2    # "hashBytes":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v5    # "nuanceId":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 942
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v9

    .line 943
    goto :goto_0

    .line 909
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "mmdid":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getResults()[Lcom/fusepowered/m1/android/NVASpeechKit$Result;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized getState()Lcom/fusepowered/m1/android/NVASpeechKit$State;
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;Landroid/content/Context;)Z
    .locals 9
    .param p1, "credentials"    # Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 703
    const-string v0, "initialize called."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 705
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v5

    .line 745
    :goto_0
    return v0

    .line 709
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    .line 711
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_2

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_3

    .line 725
    iget-object v0, p1, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->appKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->string2Byte(Ljava/lang/String;)[B

    move-result-object v6

    .line 726
    .local v6, "appKeyBytes":[B
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 727
    const-string v1, "1.0"

    iget-object v2, p1, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->appID:Ljava/lang/String;

    iget-object v3, p1, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->server:Ljava/lang/String;

    iget v4, p1, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->port:I

    sget-object v7, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 735
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skVocalListener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .line 736
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->createRecognizerListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skRecogListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 737
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    .line 738
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    .line 739
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    .end local v6    # "appKeyBytes":[B
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 719
    .local v8, "ex":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    goto :goto_1

    .line 744
    .end local v8    # "ex":Ljava/lang/IllegalStateException;
    :cond_3
    const-string v0, "Already initialized. Skipping."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move v0, v5

    .line 745
    goto :goto_0
.end method

.method public logEvent()V
    .locals 10

    .prologue
    .line 614
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 619
    .local v2, "content":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    const-string v0, "nva_ad_network_id"

    const-string v1, "MillenialMedia"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "nva_device_id"

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getNuanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "nva_ad_publisher_id"

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v8, ""

    .line 624
    .local v8, "mmSessionId":Ljava/lang/String;
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    iget-object v0, v0, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->sessionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    iget-object v8, v0, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->sessionID:Ljava/lang/String;

    .line 627
    const-string v0, "nva_ad_session_id"

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->_credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    iget-object v1, v1, Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;->sessionID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getAdId()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "adId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    const-string v0, "nva_ad_id"

    invoke-virtual {v2, v0, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 638
    const-string v0, "nva_nvc_session_id"

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v9, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    .line 640
    .local v9, "session_id_for_logging":Ljava/lang/String;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    .line 647
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending log revision command to server. sessionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] deviceId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getNuanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] adId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] mmSessionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "NVA_LOG_EVENT"

    iget-object v3, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->commandListener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    iget-object v5, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/GenericCommand;

    move-result-object v7

    .line 649
    .local v7, "command":Lcom/nuance/nmdp/speechkit/GenericCommand;
    invoke-interface {v7}, Lcom/nuance/nmdp/speechkit/GenericCommand;->start()V

    goto/16 :goto_0

    .line 644
    .end local v7    # "command":Lcom/nuance/nmdp/speechkit/GenericCommand;
    .end local v9    # "session_id_for_logging":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "session_id_for_logging":Ljava/lang/String;
    goto :goto_1
.end method

.method recognitionResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonResults"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 466
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.recognitionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    const-string v0, "release called."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->stopActions()V

    .line 600
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->cancelAudioLevelCallbacks()V

    .line 602
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    .line 605
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 606
    iput-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 608
    :cond_0
    iput-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 609
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->releaseWebView()V

    .line 610
    return-void
.end method

.method public setSpeechKitListener(Lcom/fusepowered/m1/android/NVASpeechKit$Listener;)V
    .locals 0
    .param p1, "speechKitListener"    # Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    .line 506
    return-void
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 6
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 511
    const-string v0, "RECORDING INVOKED."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "dictation"

    iget-object v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skRecogListener:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    iget-object v5, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 516
    const-string v0, "START RECORDING"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    move v0, v2

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSampleRecording()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->startTrackingAudioSample()V

    .line 552
    const-string v0, "en_US"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->startRecording(Ljava/lang/String;)Z

    .line 553
    return-void
.end method

.method public stopActions()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v1, :cond_0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->cancelCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "No speech kit to disconnect."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public textToSpeech(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 585
    const-string v0, "TTS INVOKED."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skVocalListener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Vocalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentVocalizer:Lcom/nuance/nmdp/speechkit/Vocalizer;

    .line 589
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentVocalizer:Lcom/nuance/nmdp/speechkit/Vocalizer;

    invoke-interface {v0, p1, p0}, Lcom/nuance/nmdp/speechkit/Vocalizer;->speakString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCustomWords(Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V
    .locals 12
    .param p1, "op"    # Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;
    .param p2, "words"    # [Ljava/lang/String;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 767
    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;-><init>()V

    .line 768
    .local v1, "datablock":Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating dataupload command and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    if-ne p1, v3, :cond_1

    const-string v3, "adding"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " words."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 769
    new-instance v8, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    const-string v0, "nva_custom_word_uploads"

    sget-object v3, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-direct {v8, v0, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V

    .line 771
    .local v8, "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    new-instance v6, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    :goto_2
    invoke-direct {v6, v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;-><init>(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V

    .line 772
    .local v6, "addAction":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    move-object v7, p2

    .local v7, "arr$":[Ljava/lang/String;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_3

    aget-object v11, v7, v9

    .line 774
    .local v11, "word":Ljava/lang/String;
    invoke-virtual {v6, v11}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->addWord(Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tword: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 772
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 768
    .end local v6    # "addAction":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "word":Ljava/lang/String;
    :cond_1
    const-string v3, "deleting"

    goto :goto_1

    .line 771
    .restart local v8    # "data":Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_2

    .line 777
    .restart local v6    # "addAction":Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_3
    invoke-virtual {v8, v6}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->addAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V

    .line 778
    invoke-virtual {v1, v8}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->addData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V

    .line 779
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getChecksum()I

    move-result v2

    .line 781
    .local v2, "checksum":I
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommandType:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    .line 782
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v4, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->dataUploadListener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    iget-object v5, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 783
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/DataUploadCommand;->start()V

    goto/16 :goto_0
.end method

.method voiceError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 475
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.voiceError(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method voiceStateChangeError()V
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 448
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 450
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'error\')"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method voiceStateChangeProcessing()V
    .locals 2

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 430
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 432
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'processing\')"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method

.method voiceStateChangeReady()V
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 412
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 414
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'ready\')"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method voiceStateChangeRecording()V
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 421
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 423
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'recording\')"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method voiceStateChangeVocalizing()V
    .locals 2

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/fusepowered/m1/android/NVASpeechKit;->getMMWebView()Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    .line 439
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 441
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'vocalizing\')"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 443
    :cond_0
    return-void
.end method
