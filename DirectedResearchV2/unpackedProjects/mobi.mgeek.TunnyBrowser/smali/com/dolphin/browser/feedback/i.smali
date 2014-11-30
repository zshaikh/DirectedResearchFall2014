.class Lcom/dolphin/browser/feedback/i;
.super Ljava/lang/Object;
.source "FeedbackHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/feedback/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/feedback/g;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/dolphin/browser/feedback/i;->a:Lcom/dolphin/browser/feedback/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    check-cast p2, Lcom/dolphin/browser/feedback/d;

    .line 305
    invoke-virtual {p2}, Lcom/dolphin/browser/feedback/d;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    invoke-virtual {p2}, Lcom/dolphin/browser/feedback/d;->a()Lcom/dolphin/browser/feedback/e;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/e;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 308
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/e;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/e;->c()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/e;->d()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/e;->e()Ljava/lang/String;

    move-result-object v5

    .line 312
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 313
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/feedback/i;->a:Lcom/dolphin/browser/feedback/g;

    invoke-static/range {v0 .. v7}, Lcom/dolphin/browser/feedback/g;->a(Lcom/dolphin/browser/feedback/g;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/feedback/i;->a:Lcom/dolphin/browser/feedback/g;

    invoke-static {v0}, Lcom/dolphin/browser/feedback/g;->a(Lcom/dolphin/browser/feedback/g;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 317
    return-void
.end method
