.class Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SingletonHolder;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMSpeechkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;-><init>(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$1;)V

    sput-object v0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SingletonHolder;->INSTANCE:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
