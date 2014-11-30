.class Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView$SRURLSpan;
.super Landroid/text/style/URLSpan;
.source "SRTextView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView$SRURLSpan;->a:Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;

    .line 139
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 144
    return-void
.end method
