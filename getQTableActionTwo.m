function [ action_and_qvalue_indices ] = getQTableActionTwo(G, ACTIONS, player, QTABLE, qTableSize, epsilon ) 


random_qvalue_reward_index = randi([1 3], 1);
action_qvalue_index = nan(length(ACTIONS),2);
action_and_qvalue_indices = [0,0];


if (rand() >= epsilon)
    
    %     ismember(QTABLE(:,1:26),[GTwo(find(GTwo|~GTwo)') player],'rows')
    for n = 1 : length(ACTIONS(:,1)) 
        
        for m = 1: qTableSize
            
            if(isempty(QTABLE(m,1)))
              break;
            end
            
              % save the Q-value of the find state-action pair 
              ismember(QTABLE(:,1:28),[0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1],'rows')

            if (isequal(QTABLE(1,1:GSize),GTwo(find(GTwo|~GTwo)'))  & isequal(QTABLE(m,GSize+1:GSize+2),ACTIONS(m,1:2)) & QTABLE(m,GSize+3)  == player)
               action_qvalue_index(n,1) = m;
               action_qvalue_index(n,2) = QTABLE{m,4}(random_qvalue_reward_index);
               break;
            end
        
        end
        
        
    end
    
    
else
    
end




end

