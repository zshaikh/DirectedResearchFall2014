.class public final enum Lcom/dolphin/browser/theme/d/j;
.super Ljava/lang/Enum;
.source "ThemeInstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/theme/d/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/theme/d/j;

.field public static final enum b:Lcom/dolphin/browser/theme/d/j;

.field private static final synthetic c:[Lcom/dolphin/browser/theme/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/dolphin/browser/theme/d/j;

    const-string v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/theme/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    new-instance v0, Lcom/dolphin/browser/theme/d/j;

    const-string v1, "FORMAT_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/theme/d/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/theme/d/j;->b:Lcom/dolphin/browser/theme/d/j;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/theme/d/j;

    sget-object v1, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/theme/d/j;->b:Lcom/dolphin/browser/theme/d/j;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/theme/d/j;->c:[Lcom/dolphin/browser/theme/d/j;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/theme/d/j;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/dolphin/browser/theme/d/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/d/j;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/theme/d/j;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/dolphin/browser/theme/d/j;->c:[Lcom/dolphin/browser/theme/d/j;

    invoke-virtual {v0}, [Lcom/dolphin/browser/theme/d/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/theme/d/j;

    return-object v0
.end method
