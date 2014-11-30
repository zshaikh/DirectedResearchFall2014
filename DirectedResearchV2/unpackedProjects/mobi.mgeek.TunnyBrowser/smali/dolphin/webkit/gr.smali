.class Ldolphin/webkit/gr;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Ldolphin/webkit/b;


# instance fields
.field private a:Ldolphin/webkit/WebViewClassic;

.field private b:Ldolphin/webkit/a;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/gr;->c:Z

    .line 48
    new-instance v0, Ldolphin/webkit/gs;

    invoke-direct {v0, p0}, Ldolphin/webkit/gs;-><init>(Ldolphin/webkit/gr;)V

    iput-object v0, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/gr;->a:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldolphin/webkit/gr;->b:Ldolphin/webkit/a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Ldolphin/webkit/gr;->b:Ldolphin/webkit/a;

    invoke-virtual {v0}, Ldolphin/webkit/a;->a()V

    .line 46
    :cond_0
    return-void
.end method

.method a(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Ldolphin/webkit/gr;->a:Ldolphin/webkit/WebViewClassic;

    .line 34
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Ldolphin/webkit/gr;->c:Z

    .line 38
    return-void
.end method

.method public a(Ldolphin/webkit/a;)Z
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Ldolphin/webkit/gr;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    .line 97
    iget-object v1, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    if-nez v1, :cond_0

    .line 98
    sget v1, Ldolphin/webkit/R$layout;->dw_webview_text_selection:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    sget v2, Ldolphin/webkit/R$id;->btnDone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v2, Ldolphin/webkit/R$id;->btnCopy:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v2, Ldolphin/webkit/R$id;->btnShare:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v2, Ldolphin/webkit/R$id;->btnSelectAll:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v2, Ldolphin/webkit/R$id;->btnWebSearch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/gr;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    .line 107
    :cond_0
    iget-boolean v1, p0, Ldolphin/webkit/gr;->c:Z

    .line 108
    iget-boolean v2, p0, Ldolphin/webkit/gr;->c:Z

    .line 110
    iget-object v3, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    sget v4, Ldolphin/webkit/R$id;->btnCopy:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    sget v3, Ldolphin/webkit/R$id;->btnWebSearch:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Ldolphin/webkit/a;->a(Landroid/view/View;)V

    .line 113
    invoke-virtual {p1, v0}, Ldolphin/webkit/a;->a(Landroid/content/Context;)V

    .line 114
    iput-object p1, p0, Ldolphin/webkit/gr;->b:Ldolphin/webkit/a;

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ldolphin/webkit/a;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ldolphin/webkit/gr;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->selectionDone()V

    .line 121
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ldolphin/webkit/gr;->b:Ldolphin/webkit/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/gr;->b:Ldolphin/webkit/a;

    invoke-virtual {v0}, Ldolphin/webkit/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 86
    iget-object v1, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 88
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 89
    iget-object v2, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 90
    iget-object v0, p0, Ldolphin/webkit/gr;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 92
    :cond_0
    return v0
.end method
