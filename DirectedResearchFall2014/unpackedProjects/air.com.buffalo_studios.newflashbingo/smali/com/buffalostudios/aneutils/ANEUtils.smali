.class public Lcom/buffalostudios/aneutils/ANEUtils;
.super Ljava/lang/Object;
.source "ANEUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buffalostudios/aneutils/ANEUtils$GetError;,
        Lcom/buffalostudios/aneutils/ANEUtils$SetInForeground;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANEUtils"

.field private static _isInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buffalostudios/aneutils/ANEUtils;->_isInForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/buffalostudios/aneutils/ANEUtils;->setInForeground(Z)V

    return-void
.end method

.method public static getInForeground()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/buffalostudios/aneutils/ANEUtils;->_isInForeground:Z

    return v0
.end method

.method private static setInForeground(Z)V
    .locals 0
    .param p0, "isInForeground"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/buffalostudios/aneutils/ANEUtils;->_isInForeground:Z

    .line 20
    return-void
.end method
