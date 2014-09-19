.class Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$SingletonHolder;
.super Ljava/lang/Object;
.source "BridgeMMMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;-><init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;)V

    sput-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$SingletonHolder;->INSTANCE:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
