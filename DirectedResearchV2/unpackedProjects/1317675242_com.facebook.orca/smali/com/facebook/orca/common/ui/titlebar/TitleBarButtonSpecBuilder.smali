.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
.super Ljava/lang/Object;
.source "TitleBarButtonSpecBuilder.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a:I

    .line 25
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    .line 34
    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->e:Z

    return v0
.end method

.method public f()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;)V

    return-object v0
.end method
