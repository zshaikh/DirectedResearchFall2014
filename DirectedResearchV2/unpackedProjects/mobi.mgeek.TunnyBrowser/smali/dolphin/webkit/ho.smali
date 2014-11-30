.class public Ldolphin/webkit/ho;
.super Landroid/widget/ArrayAdapter;
.source "WebKitResources.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    iput p2, p0, Ldolphin/webkit/ho;->a:I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/ho;->b:I

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    iput p2, p0, Ldolphin/webkit/ho;->a:I

    .line 122
    iput v0, p0, Ldolphin/webkit/ho;->b:I

    .line 123
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p0}, Ldolphin/webkit/ho;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p4, p3, v2}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    :goto_0
    :try_start_0
    iget v1, p0, Ldolphin/webkit/ho;->b:I

    if-nez v1, :cond_1

    .line 150
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 161
    :goto_1
    invoke-virtual {p0, p1}, Ldolphin/webkit/ho;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 163
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_2
    return-object v2

    :cond_0
    move-object v2, p2

    .line 144
    goto :goto_0

    .line 153
    :cond_1
    :try_start_1
    iget v1, p0, Ldolphin/webkit/ho;->b:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    goto :goto_1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    const-string v2, "You must supply a resource ID for a TextView"

    invoke-static {v2}, Ldolphin/util/Log;->e(Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ldolphin/webkit/ho;->a:I

    invoke-direct {p0, p1, p2, p3, v0}, Ldolphin/webkit/ho;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
