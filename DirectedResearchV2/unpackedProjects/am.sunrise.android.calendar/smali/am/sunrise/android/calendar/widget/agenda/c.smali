.class public Lam/sunrise/android/calendar/widget/agenda/c;
.super Lam/sunrise/android/calendar/widget/agenda/l;
.source "EventIconTarget.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(ILandroid/widget/RemoteViews;III)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/widget/agenda/l;-><init>(ILandroid/widget/RemoteViews;I)V

    .line 22
    iput p4, p0, Lam/sunrise/android/calendar/widget/agenda/c;->a:I

    .line 23
    iput p5, p0, Lam/sunrise/android/calendar/widget/agenda/c;->b:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/c;->b:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 29
    return-void
.end method

.method public b(Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/c;->b:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 34
    return-void
.end method
