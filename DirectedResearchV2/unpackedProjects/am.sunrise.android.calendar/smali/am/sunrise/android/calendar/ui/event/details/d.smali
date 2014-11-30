.class Lam/sunrise/android/calendar/ui/event/details/d;
.super Ljava/lang/Object;
.source "DeleteEventDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/a;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/d;->a:Lam/sunrise/android/calendar/ui/event/details/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/d;->a:Lam/sunrise/android/calendar/ui/event/details/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/a;->dismiss()V

    .line 117
    return-void
.end method
