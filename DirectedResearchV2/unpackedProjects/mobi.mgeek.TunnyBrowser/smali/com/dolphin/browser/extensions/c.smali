.class public final enum Lcom/dolphin/browser/extensions/c;
.super Ljava/lang/Enum;
.source "Addon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/extensions/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/extensions/c;

.field public static final enum b:Lcom/dolphin/browser/extensions/c;

.field public static final enum c:Lcom/dolphin/browser/extensions/c;

.field public static final enum d:Lcom/dolphin/browser/extensions/c;

.field public static final enum e:Lcom/dolphin/browser/extensions/c;

.field private static final synthetic f:[Lcom/dolphin/browser/extensions/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/dolphin/browser/extensions/c;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/extensions/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    .line 108
    new-instance v0, Lcom/dolphin/browser/extensions/c;

    const-string v1, "AddonIsOld"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/extensions/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    .line 113
    new-instance v0, Lcom/dolphin/browser/extensions/c;

    const-string v1, "AppIsOld"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/extensions/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    .line 117
    new-instance v0, Lcom/dolphin/browser/extensions/c;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/extensions/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    .line 121
    new-instance v0, Lcom/dolphin/browser/extensions/c;

    const-string v1, "ApplicationMismatch"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/extensions/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/extensions/c;->e:Lcom/dolphin/browser/extensions/c;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dolphin/browser/extensions/c;

    sget-object v1, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/extensions/c;->e:Lcom/dolphin/browser/extensions/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/extensions/c;->f:[Lcom/dolphin/browser/extensions/c;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/extensions/c;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/dolphin/browser/extensions/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/c;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/extensions/c;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/dolphin/browser/extensions/c;->f:[Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0}, [Lcom/dolphin/browser/extensions/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/c;

    return-object v0
.end method
