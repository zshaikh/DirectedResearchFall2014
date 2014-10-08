.class public final enum Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;
.super Ljava/lang/Enum;
.source "IMRequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdClick:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

.field public static final enum AdRequest:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

.field public static final enum AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

.field public static final enum DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    const-string v1, "AdRequest"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    const-string v1, "AdRequest_Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    const-string v1, "DeviceInfoUpload"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    const-string v1, "AdClick"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->a:[Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->a:[Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
