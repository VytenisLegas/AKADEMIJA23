codeunit 50108 MyEvents
{
    trigger OnRun()
    var
        IsHandled: Boolean;
    begin
        MyEventPublisher(IsHandled);

        if IsHandled then
            Message('Mano eventą kažkas subscribino %1', IsHandled);
    end;

    [IntegrationEvent(false, false)]
    local procedure MyEventPublisher(var IsHandled: Boolean)
    begin
        //No Code allowed, only Comments
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyEvents,
        'MyEventPublisher', '', false, false)]
    local procedure MyEventSubscriber(var IsHandled: Boolean)
    begin
        IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyEvents,
        'MyEventPublisher', '', false, false)]
    local procedure MyEventSubscriber2(var IsHandled: Boolean)
    begin
        IsHandled := true;
    end;
}