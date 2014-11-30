.class final enum Lv2/com/playhaven/configuration/PHConfiguration$Config;
.super Ljava/lang/Enum;
.source "PHConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/configuration/PHConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/configuration/PHConfiguration$Config;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APIUrl:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum Password:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum RunningUiTests:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum SdkVersion:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum Secret:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum ShouldPrecache:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum Token:Lv2/com/playhaven/configuration/PHConfiguration$Config;

.field public static final enum Username:Lv2/com/playhaven/configuration/PHConfiguration$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "SdkVersion"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->SdkVersion:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 26
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "Token"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Token:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 27
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "Secret"

    invoke-direct {v0, v1, v5}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Secret:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 28
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "Username"

    invoke-direct {v0, v1, v6}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Username:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 29
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "Password"

    invoke-direct {v0, v1, v7}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Password:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 30
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "ShouldPrecache"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ShouldPrecache:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 31
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "APIUrl"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->APIUrl:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 32
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    const-string v1, "RunningUiTests"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->RunningUiTests:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Lv2/com/playhaven/configuration/PHConfiguration$Config;

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->SdkVersion:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Token:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Secret:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Username:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v1, v0, v6

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Password:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ShouldPrecache:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lv2/com/playhaven/configuration/PHConfiguration$Config;->APIUrl:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lv2/com/playhaven/configuration/PHConfiguration$Config;->RunningUiTests:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    aput-object v2, v0, v1

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ENUM$VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/configuration/PHConfiguration$Config;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/configuration/PHConfiguration$Config;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/configuration/PHConfiguration$Config;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ENUM$VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$Config;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
