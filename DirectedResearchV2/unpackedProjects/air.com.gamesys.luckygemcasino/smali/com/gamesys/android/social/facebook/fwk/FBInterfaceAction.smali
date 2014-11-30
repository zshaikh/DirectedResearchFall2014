.class public final enum Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;
.super Ljava/lang/Enum;
.source "FBInterfaceAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO_CLOSE:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

.field public static final enum FEED_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

.field public static final enum LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

.field public static final enum REQUEST_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;


# instance fields
.field public final loginRequired:Z

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    const-string v1, "FEED_DIALOG"

    .line 12
    const-string v2, "com.gamesys.android.facebook.ane.ACTION_FEED_DIALOG"

    invoke-direct {v0, v1, v3, v2}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->FEED_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .line 14
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    const-string v1, "REQUEST_DIALOG"

    .line 15
    const-string v2, "com.gamesys.android.facebook.ane.ACTION_REQUEST_DIALOG"

    invoke-direct {v0, v1, v4, v2}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->REQUEST_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .line 17
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    const-string v1, "LOGIN"

    .line 18
    const-string v2, "com.gamesys.android.facebook.ane.ACTION_LOGIN"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .line 20
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    const-string v1, "AUTO_CLOSE"

    .line 21
    const-string v2, "com.gamesys.android.facebook.ane.ACTION_AUTO_CLOSE"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->AUTO_CLOSE:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->FEED_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->REQUEST_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->AUTO_CLOSE:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ENUM$VALUES:[Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "loginRequired"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->loginRequired:Z

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ENUM$VALUES:[Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
