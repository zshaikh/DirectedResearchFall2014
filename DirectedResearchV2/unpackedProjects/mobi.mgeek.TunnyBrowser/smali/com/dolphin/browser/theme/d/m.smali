.class public final enum Lcom/dolphin/browser/theme/d/m;
.super Ljava/lang/Enum;
.source "XmlResParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/theme/d/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/theme/d/m;

.field public static final enum b:Lcom/dolphin/browser/theme/d/m;

.field public static final enum c:Lcom/dolphin/browser/theme/d/m;

.field public static final enum d:Lcom/dolphin/browser/theme/d/m;

.field public static final enum e:Lcom/dolphin/browser/theme/d/m;

.field private static final synthetic f:[Lcom/dolphin/browser/theme/d/m;


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
    new-instance v0, Lcom/dolphin/browser/theme/d/m;

    const-string v1, "BAD"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/theme/d/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->a:Lcom/dolphin/browser/theme/d/m;

    .line 44
    new-instance v0, Lcom/dolphin/browser/theme/d/m;

    const-string v1, "DRAWABLE"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/theme/d/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->b:Lcom/dolphin/browser/theme/d/m;

    .line 45
    new-instance v0, Lcom/dolphin/browser/theme/d/m;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/theme/d/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->c:Lcom/dolphin/browser/theme/d/m;

    .line 46
    new-instance v0, Lcom/dolphin/browser/theme/d/m;

    const-string v1, "ANDROID_DRAWABLE"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/theme/d/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->d:Lcom/dolphin/browser/theme/d/m;

    .line 47
    new-instance v0, Lcom/dolphin/browser/theme/d/m;

    const-string v1, "ANDROID_COLOR"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/theme/d/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->e:Lcom/dolphin/browser/theme/d/m;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dolphin/browser/theme/d/m;

    sget-object v1, Lcom/dolphin/browser/theme/d/m;->a:Lcom/dolphin/browser/theme/d/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/theme/d/m;->b:Lcom/dolphin/browser/theme/d/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/theme/d/m;->c:Lcom/dolphin/browser/theme/d/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/theme/d/m;->d:Lcom/dolphin/browser/theme/d/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/theme/d/m;->e:Lcom/dolphin/browser/theme/d/m;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/theme/d/m;->f:[Lcom/dolphin/browser/theme/d/m;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/theme/d/m;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/dolphin/browser/theme/d/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/d/m;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/theme/d/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->f:[Lcom/dolphin/browser/theme/d/m;

    invoke-virtual {v0}, [Lcom/dolphin/browser/theme/d/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/theme/d/m;

    return-object v0
.end method
