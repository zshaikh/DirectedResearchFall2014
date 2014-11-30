.class final Ldolphin/webkit/ed;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Landroid/text/format/Time;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Ldolphin/webkit/ed;->a:Landroid/text/format/Time;

    iput-object p2, p0, Ldolphin/webkit/ed;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p3, p0, Ldolphin/webkit/ed;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Ldolphin/webkit/ed;->a:Landroid/text/format/Time;

    invoke-virtual {v0, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    .line 186
    iget-object v0, p0, Ldolphin/webkit/ed;->a:Landroid/text/format/Time;

    const-string v1, "%Y-%m"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Ldolphin/webkit/ed;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/ed;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
