.class Lcom/e/a/n;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/e/a/n;->a:Lcom/e/a/c;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    return-void
.end method
