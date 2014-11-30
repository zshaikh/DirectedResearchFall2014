.class Lcom/dolphin/browser/feedback/h;
.super Ljava/lang/Object;
.source "FeedbackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/feedback/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/feedback/g;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/dolphin/browser/feedback/h;->a:Lcom/dolphin/browser/feedback/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 289
    invoke-static {p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 291
    return-void
.end method
