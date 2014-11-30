.class Lcom/e/a/d;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/e/a/d;->a:Lcom/e/a/c;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    return-void
.end method
