.class final Lcom/dolphin/browser/util/bd;
.super Ljava/lang/Object;
.source "IconHelperCore.java"

# interfaces
.implements Lcom/e/a/a;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/dolphin/browser/util/bd;->a:I

    .line 44
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 48
    const v0, 0x389d00

    if-eq p1, v0, :cond_0

    const v0, -0xc76300

    if-ne p1, v0, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/util/bd;->a:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result p1

    .line 51
    :cond_1
    return p1
.end method
