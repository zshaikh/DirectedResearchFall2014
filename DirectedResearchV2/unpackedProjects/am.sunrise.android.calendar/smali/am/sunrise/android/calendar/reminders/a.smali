.class public Lam/sunrise/android/calendar/reminders/a;
.super Ljava/lang/Object;
.source "AlarmManagerHelper.java"


# instance fields
.field private a:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lam/sunrise/android/calendar/reminders/a;->a:Landroid/app/AlarmManager;

    .line 24
    return-void
.end method


# virtual methods
.method public a(IJLandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/a;->a:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/a;->a:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/reminders/a;->a:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 36
    return-void
.end method
