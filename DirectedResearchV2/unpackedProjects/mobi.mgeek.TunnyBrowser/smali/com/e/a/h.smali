.class Lcom/e/a/h;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Shader;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Shader;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/e/a/h;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/h;->a:Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/e/a/h;->a:Landroid/graphics/Shader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    return-void
.end method
