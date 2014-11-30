.class public final enum Lcom/playtika/extensions/fbsdk/FbSdkContext$State;
.super Ljava/lang/Enum;
.source "FbSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playtika/extensions/fbsdk/FbSdkContext$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field private static final synthetic ENUM$VALUES:[Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field public static final enum NONE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field public static final enum UPDATE_PERMISSIONS_FOR_DIALOG:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field public static final enum UPDATE_PERMISSIONS_FOR_REQUEST:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field public static final enum UPDATE_PERMISSIONS_FROM_AS:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->NONE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    const-string v1, "AUTHORIZE"

    invoke-direct {v0, v1, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    const-string v1, "UPDATE_PERMISSIONS_FOR_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_DIALOG:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    const-string v1, "UPDATE_PERMISSIONS_FOR_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_REQUEST:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    const-string v1, "UPDATE_PERMISSIONS_FROM_AS"

    invoke-direct {v0, v1, v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FROM_AS:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->NONE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_DIALOG:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_REQUEST:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FROM_AS:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ENUM$VALUES:[Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playtika/extensions/fbsdk/FbSdkContext$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    return-object p0
.end method

.method public static values()[Lcom/playtika/extensions/fbsdk/FbSdkContext$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ENUM$VALUES:[Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
