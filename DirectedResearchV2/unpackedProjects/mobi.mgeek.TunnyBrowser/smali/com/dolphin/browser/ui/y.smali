.class public interface abstract Lcom/dolphin/browser/ui/y;
.super Ljava/lang/Object;
.source "FakeViewProductManager.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/high16 v0, 0x41f00000

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    sput v0, Lcom/dolphin/browser/ui/y;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/dolphin/browser/extensions/n;ZZ)V
.end method
