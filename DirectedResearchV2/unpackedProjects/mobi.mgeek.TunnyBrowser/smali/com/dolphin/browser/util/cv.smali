.class final Lcom/dolphin/browser/util/cv;
.super Ljava/lang/Object;
.source "ThemeUtil.java"

# interfaces
.implements Lcom/e/a/a;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/dolphin/browser/util/cv;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 45
    const v0, 0x389d00

    if-eq p1, v0, :cond_0

    const v0, -0xc76300

    if-ne p1, v0, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/util/cv;->a:I

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result p1

    .line 48
    :cond_1
    return p1
.end method
