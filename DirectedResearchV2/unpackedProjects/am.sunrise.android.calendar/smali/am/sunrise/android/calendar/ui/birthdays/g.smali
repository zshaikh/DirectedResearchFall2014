.class public Lam/sunrise/android/calendar/ui/birthdays/g;
.super Ljava/lang/Object;
.source "BirthdaysAdapter.java"

# interfaces
.implements Lcom/b/a/j;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/birthdays/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/birthdays/f;Ljava/lang/String;IIII)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->a:Ljava/lang/ref/WeakReference;

    .line 127
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->b:Ljava/lang/String;

    .line 128
    iput p3, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->c:I

    .line 129
    iput p4, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->d:I

    .line 130
    iput p5, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->e:I

    .line 131
    iput p6, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->f:I

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/birthdays/f;

    .line 137
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->E:Landroid/widget/TextView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/birthdays/f;

    .line 147
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->E:Landroid/widget/TextView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->F:Landroid/widget/TextView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/g;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :cond_0
    return-void
.end method
