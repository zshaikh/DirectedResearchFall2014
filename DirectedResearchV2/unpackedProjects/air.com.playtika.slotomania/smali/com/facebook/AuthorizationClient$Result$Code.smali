.class final enum Lcom/facebook/AuthorizationClient$Result$Code;
.super Ljava/lang/Enum;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AuthorizationClient$Result$Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 808
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 809
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 810
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 807
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ENUM$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result$Code;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AuthorizationClient$Result$Code;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AuthorizationClient$Result$Code;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ENUM$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method