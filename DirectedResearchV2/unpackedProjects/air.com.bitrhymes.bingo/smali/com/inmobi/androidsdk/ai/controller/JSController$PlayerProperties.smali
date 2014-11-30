.class public Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;
.super Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioMuted:Z

.field public autoPlay:Z

.field public doLoop:Z

.field public id:Ljava/lang/String;

.field public showControl:Z

.field public startStyle:Ljava/lang/String;

.field public stopStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties$1;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties$1;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->showControl:Z

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->autoPlay:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->audioMuted:Z

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop:Z

    .line 54
    const-string v0, "normal"

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->audioMuted:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->autoPlay:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFullScreen()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p2, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->autoPlay:Z

    .line 99
    iput-boolean p3, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->showControl:Z

    .line 100
    iput-boolean p4, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop:Z

    .line 101
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->audioMuted:Z

    .line 102
    iput-object p5, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public showControl()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->showControl:Z

    return v0
.end method
