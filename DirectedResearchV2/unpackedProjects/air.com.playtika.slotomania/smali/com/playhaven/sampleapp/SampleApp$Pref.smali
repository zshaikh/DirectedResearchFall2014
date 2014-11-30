.class public final enum Lcom/playhaven/sampleapp/SampleApp$Pref;
.super Ljava/lang/Enum;
.source "SampleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/SampleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/sampleapp/SampleApp$Pref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/sampleapp/SampleApp$Pref;

.field public static final enum Secret:Lcom/playhaven/sampleapp/SampleApp$Pref;

.field public static final enum Server:Lcom/playhaven/sampleapp/SampleApp$Pref;

.field public static final enum Token:Lcom/playhaven/sampleapp/SampleApp$Pref;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/playhaven/sampleapp/SampleApp$Pref;

    const-string v1, "Token"

    const-string v2, "tokenPref"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/sampleapp/SampleApp$Pref;->Token:Lcom/playhaven/sampleapp/SampleApp$Pref;

    .line 27
    new-instance v0, Lcom/playhaven/sampleapp/SampleApp$Pref;

    const-string v1, "Secret"

    const-string v2, "secretPref"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/sampleapp/SampleApp$Pref;->Secret:Lcom/playhaven/sampleapp/SampleApp$Pref;

    .line 28
    new-instance v0, Lcom/playhaven/sampleapp/SampleApp$Pref;

    const-string v1, "Server"

    const-string v2, "apiServerPref"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/sampleapp/SampleApp$Pref;->Server:Lcom/playhaven/sampleapp/SampleApp$Pref;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playhaven/sampleapp/SampleApp$Pref;

    sget-object v1, Lcom/playhaven/sampleapp/SampleApp$Pref;->Token:Lcom/playhaven/sampleapp/SampleApp$Pref;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/sampleapp/SampleApp$Pref;->Secret:Lcom/playhaven/sampleapp/SampleApp$Pref;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/sampleapp/SampleApp$Pref;->Server:Lcom/playhaven/sampleapp/SampleApp$Pref;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/sampleapp/SampleApp$Pref;->ENUM$VALUES:[Lcom/playhaven/sampleapp/SampleApp$Pref;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/playhaven/sampleapp/SampleApp$Pref;->key:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/sampleapp/SampleApp$Pref;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/sampleapp/SampleApp$Pref;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/sampleapp/SampleApp$Pref;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/sampleapp/SampleApp$Pref;->ENUM$VALUES:[Lcom/playhaven/sampleapp/SampleApp$Pref;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$Pref;->key:Ljava/lang/String;

    return-object v0
.end method
