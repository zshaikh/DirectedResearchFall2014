.class public Lcom/dolphin/browser/search/ui/AddressAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "AddressAutoComplete.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Lcom/dolphin/browser/search/ui/a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c:Z

    .line 85
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c:Z

    .line 85
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c:Z

    .line 85
    iput-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/search/ui/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->b:Lcom/dolphin/browser/search/ui/a;

    .line 38
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a:Ljava/lang/CharSequence;

    .line 123
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    .line 89
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 107
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 108
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 112
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    const-class v1, Landroid/widget/AutoCompleteTextView;

    const-string v2, "setDropDownAlwaysVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v0, "AddressAutoComplete"

    const-string v1, "No such Method: setDropDownAlwaysVisible"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 3

    .prologue
    .line 98
    const-string v0, "AddressAutoComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enoughToFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->d:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->b:Lcom/dolphin/browser/search/ui/a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->b:Lcom/dolphin/browser/search/ui/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/search/ui/a;->a(ZIIII)V

    .line 140
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AutoCompleteTextView;->onLayout(ZIIII)V

    .line 141
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onMeasure(II)V

    .line 133
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "AddressAutoComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPerformFilterWork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-boolean v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->c:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 69
    const-string v0, "AddressAutoComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performFiltering::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setDropDownHeight(I)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 128
    return-void
.end method
