.class Ldolphin/webkit/eb;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ldolphin/webkit/ea;


# direct methods
.method constructor <init>(Ldolphin/webkit/ea;III)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Ldolphin/webkit/eb;->d:Ldolphin/webkit/ea;

    iput p2, p0, Ldolphin/webkit/eb;->a:I

    iput p3, p0, Ldolphin/webkit/eb;->b:I

    iput p4, p0, Ldolphin/webkit/eb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7

    .prologue
    .line 137
    iget-object v0, p0, Ldolphin/webkit/eb;->d:Ldolphin/webkit/ea;

    iget-object v0, v0, Ldolphin/webkit/ea;->b:Landroid/text/format/Time;

    const/4 v1, 0x0

    iget v4, p0, Ldolphin/webkit/eb;->a:I

    iget v5, p0, Ldolphin/webkit/eb;->b:I

    iget v6, p0, Ldolphin/webkit/eb;->c:I

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 138
    iget-object v0, p0, Ldolphin/webkit/eb;->d:Ldolphin/webkit/ea;

    iget-object v0, v0, Ldolphin/webkit/ea;->b:Landroid/text/format/Time;

    const-string v1, "%Y-%m-%dT%H:%M"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Ldolphin/webkit/eb;->d:Ldolphin/webkit/ea;

    iget-object v1, v1, Ldolphin/webkit/ea;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/eb;->d:Ldolphin/webkit/ea;

    iget-object v2, v2, Ldolphin/webkit/ea;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
