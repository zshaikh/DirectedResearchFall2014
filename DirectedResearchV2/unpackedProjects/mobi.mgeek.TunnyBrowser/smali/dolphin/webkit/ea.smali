.class final Ldolphin/webkit/ea;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;

.field final synthetic b:Landroid/text/format/Time;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;Landroid/text/format/Time;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Ldolphin/webkit/ea;->a:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/ea;->b:Landroid/text/format/Time;

    iput-object p3, p0, Ldolphin/webkit/ea;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .prologue
    .line 134
    new-instance v0, Ldolphin/webkit/eu;

    iget-object v1, p0, Ldolphin/webkit/ea;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/eb;

    invoke-direct {v2, p0, p4, p3, p2}, Ldolphin/webkit/eb;-><init>(Ldolphin/webkit/ea;III)V

    iget-object v3, p0, Ldolphin/webkit/ea;->b:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Ldolphin/webkit/ea;->b:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/eu;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Ldolphin/webkit/eu;->show()V

    .line 142
    return-void
.end method
