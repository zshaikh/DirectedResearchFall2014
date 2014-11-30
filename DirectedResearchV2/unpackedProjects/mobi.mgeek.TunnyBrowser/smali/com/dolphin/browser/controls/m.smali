.class Lcom/dolphin/browser/controls/m;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/m;->a()V

    .line 2141
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/controls/a;)V
    .locals 0

    .prologue
    .line 2134
    invoke-direct {p0}, Lcom/dolphin/browser/controls/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/dolphin/browser/controls/h;I)I
    .locals 2

    .prologue
    .line 2164
    iget v0, p0, Lcom/dolphin/browser/controls/m;->b:I

    invoke-virtual {p2, p1, p3}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected a(Z)I
    .locals 2

    .prologue
    .line 2155
    if-nez p1, :cond_0

    .line 2156
    iget v0, p0, Lcom/dolphin/browser/controls/m;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/controls/GridLayout;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    const v0, 0x186a0

    .line 2160
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/controls/m;->b:I

    iget v1, p0, Lcom/dolphin/browser/controls/m;->c:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2144
    iput v0, p0, Lcom/dolphin/browser/controls/m;->b:I

    .line 2145
    iput v0, p0, Lcom/dolphin/browser/controls/m;->c:I

    .line 2146
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/controls/m;->d:I

    .line 2147
    return-void
.end method

.method protected a(II)V
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lcom/dolphin/browser/controls/m;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/m;->b:I

    .line 2151
    iget v0, p0, Lcom/dolphin/browser/controls/m;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/m;->c:I

    .line 2152
    return-void
.end method

.method protected final a(Landroid/view/View;Lcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/GridLayout;Lcom/dolphin/browser/controls/k;)V
    .locals 3

    .prologue
    .line 2168
    iget v0, p0, Lcom/dolphin/browser/controls/m;->d:I

    invoke-virtual {p2}, Lcom/dolphin/browser/controls/q;->a()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/controls/m;->d:I

    .line 2169
    iget-boolean v0, p4, Lcom/dolphin/browser/controls/k;->a:Z

    invoke-virtual {p3, p1, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;Z)I

    move-result v0

    .line 2170
    iget-object v1, p2, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    iget-boolean v2, p4, Lcom/dolphin/browser/controls/k;->a:Z

    invoke-virtual {p3, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/h;Z)Lcom/dolphin/browser/controls/h;

    move-result-object v1

    .line 2172
    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;I)I

    move-result v1

    .line 2173
    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/controls/m;->a(II)V

    .line 2174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/controls/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/controls/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
