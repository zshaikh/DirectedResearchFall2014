.class public final enum Lcom/dolphin/browser/account/d;
.super Ljava/lang/Enum;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/account/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/account/d;

.field public static final enum b:Lcom/dolphin/browser/account/d;

.field public static final enum c:Lcom/dolphin/browser/account/d;

.field public static final enum d:Lcom/dolphin/browser/account/d;

.field public static final enum e:Lcom/dolphin/browser/account/d;

.field public static final enum f:Lcom/dolphin/browser/account/d;

.field private static final synthetic g:[Lcom/dolphin/browser/account/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "DolphinConnect"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "Twitter"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "Evernote"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "Box"

    invoke-direct {v0, v1, v7}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    new-instance v0, Lcom/dolphin/browser/account/d;

    const-string v1, "Unknown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/account/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/account/d;->f:Lcom/dolphin/browser/account/d;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dolphin/browser/account/d;

    sget-object v1, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/account/d;->f:Lcom/dolphin/browser/account/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/account/d;->g:[Lcom/dolphin/browser/account/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/account/d;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/dolphin/browser/account/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/account/d;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/account/d;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/dolphin/browser/account/d;->g:[Lcom/dolphin/browser/account/d;

    invoke-virtual {v0}, [Lcom/dolphin/browser/account/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/account/d;

    return-object v0
.end method
